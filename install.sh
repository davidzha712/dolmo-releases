#!/bin/bash
# Installs Dolmo into /Applications. Run it with:
#   curl -fsSL https://raw.githubusercontent.com/davidzha712/dolmo-releases/main/install.sh | bash
#
# Files fetched with curl carry no quarantine flag, so macOS does not show the
# Gatekeeper prompt. Dolmo is not notarized: this script skips that Apple check,
# and the SHA-256 below is what ties the download to this release.
set -euo pipefail

VERSION="1.6.7"
SHA256="22f325d13f413a27a74f37a5f9cb71a67402d21e9b510e3b8f4cf0114b5cc6ef"
URL="https://github.com/davidzha712/dolmo-releases/releases/download/v${VERSION}/Dolmo_${VERSION}_aarch64.dmg"
APP_DIR="${DOLMO_APP_DIR:-/Applications}"
APP="$APP_DIR/Dolmo.app"
NEW="$APP_DIR/.Dolmo.app.new"
OLD="$APP_DIR/.Dolmo.app.old"
WORK=""
MOUNTED=""

fail() { echo "Dolmo install failed: $1" >&2; exit 1; }

cleanup() {
  set +e
  if [[ ! -e "$APP" && -e "$OLD" ]]; then
    mv "$OLD" "$APP" && echo "Dolmo install: the previous version was restored." >&2
  fi
  [[ -n "$WORK" ]] || return 0
  if [[ -n "$MOUNTED" ]]; then
    hdiutil detach "$WORK/mount" -quiet >/dev/null 2>&1 \
      || hdiutil detach "$WORK/mount" -force -quiet >/dev/null 2>&1 \
      || echo "Dolmo install: could not unmount $WORK/mount" >&2
  fi
  rm -rf "$WORK" "$NEW"
}

# Everything runs from main, called on the last line, so a truncated download
# defines functions and exits without doing anything.
main() {
  [[ "$(uname -s)" == "Darwin" ]] || fail "this installer is for macOS"
  [[ "$(uname -m)" == "arm64" ]] || fail "this build needs an Apple silicon Mac"
  if pgrep -x mimi >/dev/null 2>&1; then
    fail "quit Dolmo first, then run this again"
  fi

  trap cleanup EXIT
  trap 'exit 130' INT
  trap 'exit 143' TERM
  WORK="$(mktemp -d)"
  mkdir "$WORK/mount"

  echo "Downloading Dolmo ${VERSION}..."
  curl -fL --progress-bar -o "$WORK/Dolmo.dmg" "$URL"
  [[ "$(shasum -a 256 "$WORK/Dolmo.dmg" | cut -d' ' -f1)" == "$SHA256" ]] \
    || fail "the download does not match the published checksum"

  MOUNTED=1
  hdiutil attach "$WORK/Dolmo.dmg" -nobrowse -readonly -quiet -mountpoint "$WORK/mount"
  codesign --verify --deep --strict "$WORK/mount/Dolmo.app" \
    || fail "the app signature is not valid"

  mkdir -p "$APP_DIR"
  rm -rf "$NEW"
  # Keep any earlier .old when Dolmo.app is missing: it is the only copy left.
  if [[ -e "$APP" ]]; then rm -rf "$OLD"; fi
  ditto "$WORK/mount/Dolmo.app" "$NEW"
  # The old app is only set aside until the new one is in place; cleanup puts it back.
  if [[ -e "$APP" ]]; then mv "$APP" "$OLD"; fi
  mv "$NEW" "$APP"
  rm -rf "$OLD"

  echo "Dolmo ${VERSION} installed in ${APP_DIR}."
  [[ -n "${DOLMO_NO_OPEN:-}" ]] || open "$APP"
}

main "$@"

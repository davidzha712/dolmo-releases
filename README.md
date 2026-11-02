# Dolmo

Live subtitles and translation for meetings on macOS. This repository only hosts the installers.

**[Download the latest version](https://github.com/davidzha712/dolmo-releases/releases/latest)**

## Install (macOS 13.4 or later, Apple silicon)

1. Download `Dolmo_<version>_aarch64.dmg` from the latest release and open it.
2. Drag **Dolmo** into **Applications**.
3. Open Dolmo once. macOS blocks it because it is not notarized by Apple.
4. Open **System Settings → Privacy & Security**, scroll down and click **Open Anyway** next to Dolmo, then confirm.
5. Allow the audio, microphone or screen recording permission macOS shows the first time a feature needs it. Which audio permission appears depends on your macOS version and what you already allowed. Screen questions you start yourself always need **Screen & System Audio Recording**.
6. In Dolmo's settings, add the API key of the speech and translation service you use.

Intel Macs, Windows and Linux are not available yet.

## 中文安装说明

1. 从最新版本下载 `Dolmo_<版本>_aarch64.dmg` 并打开。
2. 把 **Dolmo** 拖进「应用程序」。
3. 打开一次 Dolmo。因为没有经过 Apple 公证，系统会阻止它。
4. 打开「系统设置 → 隐私与安全性」，往下找到 Dolmo，点「仍要打开」并确认。
5. 功能首次用到时，macOS 会弹出音频、麦克风或屏幕录制权限，选择允许。具体弹出哪种音频权限，取决于 macOS 版本和你之前已允许的权限。你主动发起的屏幕提问始终需要「屏幕与系统录音」。
6. 在 Dolmo 设置里填写你所用语音识别和翻译服务的 API key。

暂不支持 Intel Mac、Windows 和 Linux。

## License

MIT. See [LICENSE](LICENSE). Third-party notices are inside the app at `Dolmo.app/Contents/Resources/THIRD_PARTY_NOTICES.md`.

# Dolmo

Live subtitles and translation for meetings on macOS. This repository only hosts the installers.

**[Download the latest version](https://github.com/davidzha712/dolmo-releases/releases/latest)** · this download: macOS 13.4 or later, Apple silicon

## Install

**Option 1 — one command, no security prompt.** Open Terminal, paste this line and press Return:

```bash
curl -fsSL https://raw.githubusercontent.com/davidzha712/dolmo-releases/main/install.sh | bash
```

It downloads the latest release, checks its SHA-256, installs Dolmo into Applications and opens it. Because the file is downloaded by `curl`, macOS does not show the Gatekeeper prompt. Dolmo is not notarized by Apple, so this skips that check; [read the script](install.sh) first if you want to see what it does. Quit Dolmo before updating.

**Option 2 — the DMG.** Download `Dolmo_<version>_aarch64.dmg`, open it and drag Dolmo into Applications. macOS blocks the first launch because Dolmo is not notarized. Open **System Settings → Privacy & Security**, scroll down, click **Open Anyway** and confirm with Touch ID or your password. The DMG window shows these steps too.

**Option 3 — Homebrew.** Run `brew install --cask davidzha712/dolmo/dolmo`, and later `brew upgrade --cask dolmo` to update. Homebrew marks the download as quarantined, so the first launch is blocked the same way as the DMG.

After installing, allow the audio, microphone or screen recording permission macOS asks for the first time a feature needs it, then choose a speech and translation service in Dolmo's settings. Whether you need an API key depends on the service; most cloud services need one. On macOS 26 or later, Apple Speech and Apple Translation work on the Mac without one once the language packs are installed. The current release only includes the DMG for Apple silicon Macs.

## 中文

**方式一：一条命令，不弹安全拦截。** 打开「终端」，粘贴下面这行并回车：

```bash
curl -fsSL https://raw.githubusercontent.com/davidzha712/dolmo-releases/main/install.sh | bash
```

它会下载最新版、校验 SHA-256，装进「应用程序」并打开。用 `curl` 下载的文件不会触发 Gatekeeper 提示。Dolmo 没有经过 Apple 公证，这种方式会跳过这项检查，想先看脚本内容可以[点这里](install.sh)。更新前请先退出 Dolmo。

**方式二：DMG。** 下载 `Dolmo_<版本>_aarch64.dmg`，打开后把 Dolmo 拖进「应用程序」。首次打开会被拦截：打开「系统设置 → 隐私与安全性」，往下滚动，点「仍要打开」，再用 Touch ID 或密码确认。DMG 窗口里也写了这些步骤。

**方式三：Homebrew。** 运行 `brew install --cask davidzha712/dolmo/dolmo`，以后用 `brew upgrade --cask dolmo` 更新。Homebrew 下载的文件带隔离标记，所以首次打开和 DMG 一样会被拦截。

装好后，功能首次用到时按 macOS 的提示允许音频、麦克风或屏幕录制权限，再在 Dolmo 设置里选择语音识别和翻译服务。是否需要 API key 取决于所选服务，大多数云端服务需要；macOS 26 及以上可以用 Apple 语音识别和 Apple 翻译，装好语言包后在本机运行，不需要 key。当前发布只提供 Apple 芯片 Mac 的 DMG。

## 繁體中文

**方式一：** 打開「終端機」，貼上上方的指令並按 Return。它會下載最新版、驗證 SHA-256、安裝到「應用程式」並打開，不會出現安全阻擋。Dolmo 未經 Apple 公證，這種方式會略過該檢查。更新前請先結束 Dolmo。

**方式二：** 下載 DMG，把 Dolmo 拖進「應用程式」。首次開啟被阻擋時，打開「系統設定 → 隱私權與安全性」，往下捲動，點「強制打開」，再用 Touch ID 或密碼確認。

**方式三：** 執行 `brew install --cask davidzha712/dolmo/dolmo`，之後用 `brew upgrade --cask dolmo` 更新。首次開啟與 DMG 一樣會被阻擋。

## Deutsch

**Option 1:** Öffne das Terminal, füge den Befehl oben ein und drücke die Eingabetaste. Er lädt die neueste Version, prüft die SHA-256-Prüfsumme, installiert Dolmo unter „Programme“ und öffnet es, ohne Sicherheitsabfrage. Dolmo ist nicht von Apple notarisiert, diese Prüfung wird dabei übersprungen. Beende Dolmo vor einem Update.

**Option 2:** Lade die DMG, ziehe Dolmo nach „Programme“. Wird der erste Start blockiert: **Systemeinstellungen → Datenschutz & Sicherheit**, nach unten scrollen, **Dennoch öffnen** klicken und mit Touch ID oder Passwort bestätigen.

**Option 3:** `brew install --cask davidzha712/dolmo/dolmo` ausführen, später mit `brew upgrade --cask dolmo` aktualisieren. Der erste Start wird wie bei der DMG blockiert.

## Français

**Option 1 :** ouvrez le Terminal, collez la commande ci-dessus et appuyez sur Entrée. Elle télécharge la dernière version, vérifie son SHA-256, installe Dolmo dans Applications et l'ouvre, sans alerte de sécurité. Dolmo n'est pas notarisé par Apple : cette vérification est ignorée. Quittez Dolmo avant une mise à jour.

**Option 2 :** téléchargez le DMG et glissez Dolmo dans Applications. Si la première ouverture est bloquée : **Réglages Système → Confidentialité et sécurité**, faites défiler, cliquez sur **Ouvrir quand même** et confirmez avec Touch ID ou votre mot de passe.

**Option 3 :** lancez `brew install --cask davidzha712/dolmo/dolmo`, puis `brew upgrade --cask dolmo` pour mettre à jour. La première ouverture est bloquée comme avec le DMG.

## 日本語

**方法 1：** ターミナルを開き、上のコマンドを貼り付けて Return を押します。最新版をダウンロードし、SHA-256 を確認してから「アプリケーション」にインストールして起動します。セキュリティの警告は出ません。Dolmo は Apple の公証を受けていないため、この確認は省略されます。更新の前に Dolmo を終了してください。

**方法 2：** DMG をダウンロードし、Dolmo を「アプリケーション」にドラッグします。初回起動がブロックされたら、**システム設定 → プライバシーとセキュリティ** を開き、下にスクロールして **このまま開く** をクリックし、Touch ID かパスワードで確認します。

**方法 3：** `brew install --cask davidzha712/dolmo/dolmo` を実行し、更新は `brew upgrade --cask dolmo` で行います。初回起動は DMG と同じくブロックされます。

## 한국어

**방법 1:** 터미널을 열고 위의 명령을 붙여 넣은 뒤 Return을 누르세요. 최신 버전을 내려받아 SHA-256을 확인하고, 응용 프로그램에 설치한 뒤 실행합니다. 보안 경고는 나타나지 않습니다. Dolmo는 Apple 공증을 받지 않았으므로 이 확인을 건너뜁니다. 업데이트하기 전에 Dolmo를 종료하세요.

**방법 2:** DMG를 내려받아 Dolmo를 응용 프로그램으로 드래그하세요. 처음 열 때 차단되면 **시스템 설정 → 개인정보 보호 및 보안**에서 아래로 스크롤해 **그래도 열기**를 누르고 Touch ID나 암호로 확인하세요.

**방법 3:** `brew install --cask davidzha712/dolmo/dolmo`를 실행하고, 업데이트는 `brew upgrade --cask dolmo`로 합니다. 처음 열 때는 DMG와 마찬가지로 차단됩니다.

## ภาษาไทย

**วิธีที่ 1:** เปิด Terminal วางคำสั่งด้านบนแล้วกด Return คำสั่งนี้จะดาวน์โหลดเวอร์ชันล่าสุด ตรวจสอบ SHA-256 ติดตั้ง Dolmo ลงใน Applications แล้วเปิดให้ โดยไม่มีคำเตือนด้านความปลอดภัย Dolmo ยังไม่ผ่านการรับรองจาก Apple วิธีนี้จึงข้ามการตรวจสอบนั้น ปิด Dolmo ก่อนอัปเดต

**วิธีที่ 2:** ดาวน์โหลด DMG แล้วลาก Dolmo ไปที่ Applications หากถูกบล็อกตอนเปิดครั้งแรก ให้ไปที่ **การตั้งค่าระบบ → ความเป็นส่วนตัวและความปลอดภัย** เลื่อนลง คลิก **เปิดต่อไป** แล้วยืนยันด้วย Touch ID หรือรหัสผ่าน

**วิธีที่ 3:** รัน `brew install --cask davidzha712/dolmo/dolmo` และอัปเดตด้วย `brew upgrade --cask dolmo` การเปิดครั้งแรกจะถูกบล็อกเหมือนกับ DMG

## License

MIT. See [LICENSE](LICENSE). Third-party notices are inside the app at `Dolmo.app/Contents/Resources/THIRD_PARTY_NOTICES.md`.

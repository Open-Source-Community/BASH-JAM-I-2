# 🐧 Rofi Hadith / Azkar Reminder

A lightweight Bash script for Linux users to display random Hadiths or azkar reminders using **Rofi** with a clean, centered UI.

## ✨ Features
- **Simple UI**: Centered window with custom Arabic fonts support.
- **RTL Support**: Full support for Arabic text and Right-to-Left alignment.
- **Desktop Notifications**: Sends a system notification after displaying the Reminder.

![Screenshot](/RofiHadithAndAzkarScript/screenshot.png)


<img width="907" height="222" alt="HadithShot" src="https://github.com/user-attachments/assets/37327048-c7fd-41ff-b174-a6a8c228885c" />

## 🛠️ Prerequisites
You need to have `rofi` and `libnotify` installed on your system.
```bash
sudo apt update && sudo apt install rofi libnotify-bin -y
```

## Usage

Make the script executable:

```Bash
chmod +x hadith_script.sh
```
Run it:
```Bash
./hadith_script.sh
```

## Database Format
Edit `database.txt` and add your Hadiths and Azkar. Use `*` to represent a new line `\n` within the same Hadith.

## Customization
You can change the font, width, and colors by editing the `theme-str` section inside the script.

## 👤 Author

**[Shahd Sameh](https://github.com/SH-AHD)** *Software Engineer*

# 🐧 Bash Scripting Competition: Idea Bank

| Level | Project Title | Description | Key Features/Skills |
| :--- | :--- | :--- | :--- |
| 🟢 **Easy** | **File Extension Counter** | Analyzes a directory and counts files per extension (e.g., .txt: 5, .jpg: 12). | Loops, `find`, `cut`/`awk`, associative arrays. |
| 🟢 **Easy** | **Empty Files Cleaner** | Scans a path for 0-byte files and deletes them after user confirmation. | `find -size 0`, `if/then` logic, `rm`. |
| 🟢 **Easy** | **File Organizer** | Automatically moves files (Images, PDFs, etc.) into folders based on extensions. | `mkdir -p`, `mv`, wildcard matching, automation logic. |
| 🟢 **Easy** | **System Info Reporter** | A script that prints a "spec sheet" of the PC: Hostname, OS version, Kernel, Uptime, and CPU model. | `uname`, `hostnamectl`, `uptime`, `cat /proc/cpuinfo`. |
| 🟢 **Easy** | **Mass File Renamer** | Adds a prefix or suffix (e.g., "final_") to all files in a directory at once. | `for` loops, `mv`, string concatenation. |
| 🟢 **Easy** | **Simple CLI Calculator** | Accepts two numbers and an operator (+, -, *, /) as arguments and prints the result. | Positional parameters (`$1`, `$2`), `bc` or `$(( ))`. |
| 🟢 **Easy** | **Random Quote/Joke** | Reads a random line from a text file containing quotes or jokes to greet the user. | `shuf`, `head`, `tail`, file reading. |
| 🟢 **Easy** | **Large File Finder** | Scans a directory and lists the top 5 largest files to help clean up space. | `du -h`, `sort -hr`, `head -n 5`. |
| 🟢 **Easy** | **Audio Extractor** | A script that takes a video file and extracts the audio as an MP3. | `ffmpeg -i`, file extension swapping. |
| 🟢 **Easy** | **Image Resizer** | Batch resize all images in a folder to a specific width (e.g., 1080px) for web use. | `imagemagick`, `mogrify`, `for` loops. |
| 🟢 **Easy** | **Video Silencer** | Removes the audio track from a video file without re-encoding the video. | `ffmpeg -an`, codec copying (`-c:v copy`). |
| 🟢 **Easy** | **EXIF Data Stripper** | Removes privacy-sensitive metadata (GPS, camera info) from image files. | `exiftool`, `find`. |
| 🟡 **Medium** | **Simple Login System** | A CLI gatekeeper that validates credentials against a file with a 3-attempt lockout. | `read -s`, file parsing, counters, string comparison. |
| 🟡 **Medium** | **File Change Tracker** | Monitors a directory in real-time to detect if files are added, removed, or modified. | `stat`, `while true` loops, `diff`. |
| 🟡 **Medium** | **Pomodoro Timer CLI** | A focus tool with 25/5 min cycles, countdown displays, and system notifications. | `sleep`, countdown logic, `notify-send`. |
| 🟡 **Medium** | **Duplicate File Finder** | Identifies files with identical content (using checksums) and offers a cleanup option. | `md5sum`/`sha256sum`, nested loops, `uniq`. |
| 🟡 **Medium** | **Website Pinger/Status** | Takes a list of URLs from a file and checks if they are online or offline. Logs results to `status.log`. | `curl -I`, `ping`, `if/else`, logging. |
| 🟡 **Medium** | **Password Generator** | Generates a random, secure password. Users can specify length and whether to include symbols. | `/dev/urandom`, `tr`, `head`, flags (`getopts`). |
| 🟡 **Medium** | **Log File Analyzer** | Parses a web server log (like Apache/Nginx) to count the number of 404 errors or unique IP visits. | `grep`, `awk`, `uniq -c`, `sort`. |
| 🟡 **Medium** | **Batch User Creator** | Reads a CSV file of names and automatically creates Linux user accounts and home directories. | `useradd`, `chown`, reading CSVs, loop logic. |
| 🟡 **Medium** | **Weather CLI Tool** | Fetches the current weather for a specific city using a public API (like `wttr.in`) and displays it in ASCII. | `curl`, API interaction, formatting output. |
| 🟡 **Medium** | **Rofi Hadith/Prayer** | A popup menu using Rofi that displays a random Hadith or a prayer reminder from a text database. | `rofi -dmenu`, `shuf`, `notify-send`. |
| 🟡 **Medium** | **GIF Maker** | Converts a specific segment of a video (start time to end time) into a high-quality GIF. | `ffmpeg` filters, palettegen, positional args. |
| 🟡 **Medium** | **Watermark Adder** | Automatically overlays a transparent PNG logo onto the corner of all images in a directory. | `composite` (ImageMagick), geometry logic. |
| 🟡 **Medium** | **Podcast Downloader** | Reads an RSS feed or a list of URLs and downloads the latest audio files. | `curl`, `grep`/`awk` (to find .mp3 links), `wget`. |
| 🟡 **Medium** | **Video Compressor** | A script that shrinks large video files to a target size (e.g., "under 25MB") for Discord/Email. | `ffmpeg` bit rate calculation, `ffprobe`. |
| 🟡 **Medium** | **Rofi Emoji Picker** | A searchable Rofi menu of emojis that copies the selected one to the clipboard. | `rofi`, `xclip` or `wl-copy`. |
| 🔴 **Hard** | **System Health Dashboard** | A "top-like" tool that updates every 2 seconds to show CPU, RAM, and Disk usage in a clean UI. | `while true`, `free`, `df`, `tput` (for clearing screen). |
| 🔴 **Hard** | **Local Port Scanner** | Scans a range of ports on a given IP address to see which are open/active. | `timeout`, `/dev/tcp` device files, loops. |
| 🔴 **Hard** | **Crypto/Stock Ticker** | Uses `curl` and `jq` to fetch real-time prices from an API and alerts the user if a price hits a certain limit. | `jq` (JSON parsing), API keys, math comparisons. |
| 🔴 **Hard** | **Script Boilerplate Gen** | A tool that generates a new script file with a Shebang, Author name, Date, and License header automatically. | `cat <<EOF`, file permissions (`chmod`), interactive prompts. |
| 🔴 **Hard** | **Simple Firewall Manager** | A wrapper for `iptables` or `ufw` that allows users to block/unblock IPs and view current rules easily. | `sudo` execution, complex `case` logic, string parsing. |
| 🔴 **Hard** | **Terminal Adventure** | A Linux-themed RPG where directories are rooms and commands are used to progress. | Navigation logic, `case` statements, state management. |
| 🔴 **Hard** | **Command Recommender** | A tool that suggests correct commands when a user types a typo or a task description. | Similarity matching, history parsing, mini-database logic. |
| 🔴 **Hard** | **Smart Backup & Restore** | A system for compressed, versioned backups with a full restore functionality. | `tar`, timestamping, positional parameters, error handling. |
| 🔴 **Hard** | **Screen Recorder** | A script that lets the user select a screen area and records it to a `.mp4` with audio. | `ffmpeg` (x11grab), `slop` or `maim` for area selection. |
| 🔴 **Hard** | **YouTube to MP3 Tagger** | Downloads a YouTube video, converts to MP3, and automatically adds Artist/Album tags. | `yt-dlp`, `ffmpeg`, `id3v2` or `ffmpeg` metadata flags. |
| 🔴 **Very Hard** | **Automatic Video Intro** | Automatically prepends a 3-second "Committee Intro" video to any video file provided. | `ffmpeg` concat demuxer, resolution matching. |
| 🔴 **Very Hard** | **Rofi System Hub** | A master Rofi menu to control Volume, Brightness, WiFi, and Power (Logout/Reboot/Shutdown). | `rofi`, `amixer`, `nmcli`, `systemctl`. |
| 🔴 **Very Hard** | **Rofi Prayer Times** | Fetches daily Muslim prayer times from an API and displays them in a Rofi menu with countdowns. | `curl`, `jq` (JSON parsing), `date` math. |
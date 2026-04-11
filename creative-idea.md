#### Example 
- Idea Name :Random Password Generator
 By: Mohammed naser
 describe the idea
    Input
        password length
            optional
            default length 10
        how many different password to print
            optional
            default passwords 5
    Output
        N different encrypted passwords



--------------------------------------------------------------------------------
- Idea Name: G-Bash

By: Mostafa Medhat

Describe the idea: A set of interactive terminal games in Bash including a word guessing game, a two-player password guessing game, and reverse-word Linux command/distro quizzes with hints and descriptions.

Input:

Game selection (Guess Word, Password Game, Reverse Words)

Word/Password/Distro selection or guess

Optional hints (for Guess Word game)

Output:

Feedback on guesses (letters or digits correct, hints, or descriptions)

Win/Lose message

Revealed word, password, command, or distro when game ends



--------------------------------------------------------------------------------
- Idea name: funnyThing

By: Ali Ahmed

Description: A script that displays a random meme (image or video) from a "meme-base" (Like how with data we have data-base, code -> code-base, etc). What makes this special is that you can add any image/video to the meme-base and you can divide the it into folders if you wish (like how I have "programmingMemes" in the example). The script is designed to be bound to a keyboard shortcut for quick access, providing brief moments of entertainment or stress relief during intense study or work sessions.

Input: None
Output: A meme that appears on the top-right corner of the screen

NOTE: This idea was meant to be originally used with crontabs to display memes every 5 minutes but unfortunately running a GUI app with crontabs is very complicated

---
Idea Name: Battery Alert (Rofi-based)

By: [Shahd Sameh](https://github.com/SH-AHD)

Describe the idea: A critical safety script designed for laptops with severely degraded batteries. The script acts as a "Software UPS" by monitoring battery levels in real-time and triggering a highly intrusive, unmissable Rofi-based GUI alert when the charger is disconnected, or the battery hits a critical threshold. This prevents abrupt power loss, which is essential for protecting NVMe SSDs from controller failure and data corruption (especially when the kernel is unstable).

Input: * Real-time battery percentage and AC adapter status (via acpi).

Customizable threshold (e.g., 60% due to rapid battery drain).

User interaction to dismiss the Rofi alert.

Output: * A persistent, centered GUI popup (Rofi) that stays on top of all windows.
 
Immediate visual warning to plug in the charger.

Protection of the unsafe_shutdowns count on the NVMe drive.

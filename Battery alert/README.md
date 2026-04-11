# 🔋 Battery Alert (Rofi-based) 🛡️
**A critical safety script acting as a "Software UPS" for laptops with severely degraded batteries.**

---

### By: [Shahd Sameh](https://github.com/SH-AHD)

---

## 📖 Describe the idea

This is a critical safety script designed for laptops with severely degraded batteries. The script acts as a **"Software UPS"** by monitoring battery levels in real-time and triggering a highly intrusive, unmissable Rofi-based GUI alert when the charger is disconnected or the battery hits a critical threshold. 

This prevents abrupt power loss, which is essential for protecting NVMe SSDs from controller failure and data corruption (especially when the kernel is unstable).

---

## 🚨 How it saved my laptop

> **NOTE:** This script was developed as a survival tool for a Dell with a severely degraded battery (3% health) after a kernel-induced hardware scare. While traditional power managers exist, they are often too subtle for a battery that can die in seconds. This script ensures the developer has enough time to save their code and perform a graceful shutdown.

---

## 🖼️ See it in action

Here’s how the persistent, unmissable Rofi alert looks on my setup:

<img width="1356" height="705" alt="shot" src="https://github.com/SH-AHD/BASH-JAM-I-2/blob/Battery_alert_script/Battery%20alert/screenshot.png" />

*This alert stays centered and on top of all windows (VS Code, Emulators, etc.) until dismissed.*

---

## 🛠️ Inputs & Outputs

### Inputs:
* Real-time battery percentage and AC adapter status (via `acpi`).
* Customizable threshold (e.g., 60% due to rapid battery drain).
* User interaction to dismiss the Rofi alert.

### Outputs:
* A persistent, centered GUI popup (Rofi) that forces user focus.
* Immediate visual warning to plug in the charger.
* Protection of the `unsafe_shutdowns` count on the NVMe drive.

---

## Quick Start

1.  **Install dependencies:**
    ```bash
    sudo apt update
    sudo apt install acpi rofi -y
    ```

2.  **Download the script:**
    Save the `battery_alert_script` folder to your desired folder (e.g., `~/Documents/scripts/`), "Must contains the `.sh` and the `.rasi` files".

3.  **Make it executable:**
    ```bash
    chmod +x ~/Documents/scripts/battery_alert_script/battery_alert.sh
    ```

4.  **Run it:**
    You can run it manually or add it to **Startup Applications** in your desktop environment.

---

## 📄 License
This project is licensed under the MIT License.

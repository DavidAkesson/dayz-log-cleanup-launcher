# dayz-log-cleanup-launcher
# DayZ Log Cleanup & Auto-Launcher Script for DZSALauncher

This script is for DayZ players using **DZSALauncher** who are tired of DayZ filling up their disk with log files (`.rpt`, `.mdmp`, `.log`).  
It automatically deletes unnecessary log files before AND after you play.

---

## 🔧 What does this script do?
✅ Deletes old DayZ logs (`.rpt`, `.mdmp`, `.log`) BEFORE starting DZSALauncher.  
✅ Launches **DZSALauncher.exe** so you can start DayZ normally.  
✅ Waits for **DayZ_x64.exe** to run.  
✅ When you exit DayZ, it automatically cleans up logs AGAIN.



## 📦 How to install
1️⃣ Copy the script in Start_DayZ_Clean.bat and paste into a new textfile.  
2️⃣ Save the file as `Start_DayZ_Clean.bat` (make sure it's `.bat`, not `.txt`).  
3️⃣ Adjust this line if your DZSALauncher.exe is in a different folder (is usually found under DZSALauncher Properties in Steam):

start "" "D:\DZSALauncher\DZSALauncher.exe"

---

⚠️ Disclaimer
This  script only deletes .rpt, .mdmp, and .log files in %LocalAppData%\DayZ\.

Use at your own risk (but it’s safe 😉).

Backup anything important before running if you’re unsure.

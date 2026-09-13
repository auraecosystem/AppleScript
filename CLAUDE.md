---
Name: development
model: Lmlm
tittle: Applescript
description: This is an AppleScript script designed to automate local file management on macOS
GUIDES: Here is a step by step breakdown of what the script automates locally
author: seriki Walter Yakub 
does: 
accessibility: 
---

  * **Sets Up Paths:** Defines targets in your `Downloads` folder for two directories (`PDFs` and `Images`) and a log file (`Lmlm_Report.txt`).
  * **Organizes Files:** Uses the **Finder** app to create the `PDFs` and `Images` folders if they do not already exist, then moves `.pdf` files into `PDFs` and `.jpg`/`.png` files into `Images`.
  * **Merges PDFs:** Executes a shell command (`pdfunite`) to merge the first two PDF files found in the `PDFs` folder into a single file named `merged.pdf`.
  * **Zips Images:** Uses the `zip` shell command to compress all contents of the `Images` folder into `images.zip`.
  * **Generates a Log Report:** Creates a text summary detailing the count and names of processed PDFs and images, along with a timestamp, and writes it to `Lmlm_Report.txt`.

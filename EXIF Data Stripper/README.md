# EXIF Data Stripper
A simple Bash script to protect your privacy by wiping sensitive EXIF data from your photos before you share them.

    Removes GPS location, device serial numbers, camera model, and timestamps.
    Auto-Installs: If you don't have exiftool, the script downloads a local copy for you automatically.
    Leaves a Message: Replaces the metadata user comment with a custom note for anyone snooping.
    Two Modes:
        Overwrite: Cleans the file directly (use flag o).
        Safe: Creates a cleaned copy and keeps your original file untouched.

## How to use:

### To overwrite the original file:
./script_name.sh o your_image.jpg

### To keep a backup of the original:
./script_name.sh any_charecter your_image.jpg

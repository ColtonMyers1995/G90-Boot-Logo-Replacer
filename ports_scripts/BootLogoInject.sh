#!/bin/sh

ROMS_DIR="/storage/roms"
SRC_DIR="$ROMS_DIR/backup"

LOG="$ROMS_DIR/backup/bootinjectlog.txt"

echo "==================================" > "$LOG"
echo " G90 BootLogoInject" >> "$LOG"
echo "==================================" >> "$LOG"
echo "" >> "$LOG"

echo "Attempting /flash remount..." >> "$LOG"

mount -o remount,rw /flash 2>>"$LOG"

sleep 1

FILES="
logo.bmp
logo_kernel.bmp
logo_hdmi.bmp
logo_kernel_hdmi.bmp
"

for bmp in $FILES
do

SRC_FILE="$SRC_DIR/$bmp"
TARGET_FILE="/flash/$bmp"

echo "" >> "$LOG"
echo "Processing: $bmp" >> "$LOG"

if [ ! -f "$SRC_FILE" ]; then
    echo "Missing source file." >> "$LOG"
    continue
fi

if [ ! -f "$TARGET_FILE" ]; then
    echo "Missing target file." >> "$LOG"
    continue
fi

cp "$TARGET_FILE" "$TARGET_FILE.bak" 2>>"$LOG"

chmod 777 "$TARGET_FILE" 2>>"$LOG"

rm -f "$TARGET_FILE" 2>>"$LOG"

cp "$SRC_FILE" "$TARGET_FILE" 2>>"$LOG"

chmod 644 "$TARGET_FILE" 2>>"$LOG"

sync

if cmp -s "$SRC_FILE" "$TARGET_FILE"; then
    echo "SUCCESS" >> "$LOG"
else
    echo "FAILED" >> "$LOG"
fi

done

sync

echo "" >> "$LOG"
echo "Finished." >> "$LOG"

sleep 3
exit 0

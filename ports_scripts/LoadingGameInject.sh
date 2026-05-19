#!/bin/sh

ROMS_DIR="/storage/roms"
SRC_DIR="$ROMS_DIR/backup"

LOG="$ROMS_DIR/backup/loadinggameinject.txt"

echo "==================================" > "$LOG"
echo " G90 Loading Game Inject" >> "$LOG"
echo "==================================" >> "$LOG"
echo "" >> "$LOG"

mount -o remount,rw /storage 2>>"$LOG"

FILES="
loading-game.png
loading-game-std.png
"

TARGET_DIR="/storage/.config/splash"

for png in $FILES
do

SRC_FILE="$SRC_DIR/$png"
TARGET_FILE="$TARGET_DIR/$png"

echo "" >> "$LOG"
echo "Processing: $png" >> "$LOG"

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

echo "" >> "$LOG"
echo "Finished." >> "$LOG"

sync
sleep 3
exit 0

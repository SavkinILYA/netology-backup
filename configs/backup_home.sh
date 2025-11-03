#!/bin/bash
# Daily mirror backup of home directory

SRC="/home/savkin/"
DST="/tmp/backup"
LOG="/var/log/backup_home.log"

# Ensure destination exists
mkdir -p "$DST"

# Run rsync
if rsync -aH --delete --checksum \
         --exclude='.*' \
         --exclude='postgres_data' \
         "$SRC" "$DST" >> "$LOG" 2>&1; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] SUCCESS: Backup completed" >> "$LOG"
else
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERROR: Backup failed with code $?" >> "$LOG"
    exit 1
fi

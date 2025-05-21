#!/bin/bash

# Set the source and destination directories
SRC="gdrive:Licor data"
DEST="/lustre/darse/users/3735/ghgsoilproject/csvs"

# Run the sync command for only CSV files
rclone sync "$SRC" "$DEST" --drive-team-drive 0AC___--EDL4GUk9PVA --include "*.csv" --progress --transfers 4 --checkers 8 --verbose

echo "CSV Sync completed on $(date)"


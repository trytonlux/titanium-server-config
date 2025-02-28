#!/bin/sh

FORMAT='(bestvideo[vcodec!=vp9.2][filesize<=2G]/bestvideo)+(bestvideo[acodec^=opus]/bestaudio)/best'
FILENAME='/storage/media/YouTube/%(upload_date)s - %(uploader)s - %(title)s [%(id)s]'
HISTORY_FILE="${HOME}/.cache/youtube-history.txt"
CHANNELS_LIST="${HOME}/.config/youtube-channels.txt"

yt-dlp -f "$FORMAT" \
    -o "$FILENAME" \
    --download-archive "$HISTORY_FILE" \
    --playlist-end 5 \
    --batch-file "$CHANNELS_LIST" \
    --match-filter "!is_live & !live" \
    --no-overwrites \
    --no-continue \
    --ignore-errors \
    --embed-chapters \
    --merge-output-format "mkv" \

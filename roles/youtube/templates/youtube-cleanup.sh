#!/usr/bin/bash

API_KEY="{{ jellyfin_api_key }}"
USER_ID="{{ jellyfin_user_id }}"
YOUTUBE_ID="{{ jellyfin_youtube_library_id }}"
YOUTUBE_PATH="/storage/media/YouTube"
API_ENDPOINT="localhost:8096/Users/${USER_ID}/Items?parentId=${YOUTUBE_ID}&isPlayed=true&api_key=${API_KEY}"

played_videos=$(curl -s "$API_ENDPOINT" |
    jq -r '.Items | .[] .Name')

[[ -z "$played_videos" ]] && exit

cd "$YOUTUBE_PATH" || exit 2

while read -r video; do
    if [ -n "$video" ]; then
        filename=("$video"*)
        echo "$video"
        echo "Removing ${filename[0]}"
        rm "${filename[0]}"

        echo ""
    fi
done <<<"$played_videos"

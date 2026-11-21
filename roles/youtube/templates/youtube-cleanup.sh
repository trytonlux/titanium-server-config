#!/usr/bin/bash

API_KEY="{{ youtube_jellyfin_api_key }}"
USER_ID="{{ youtube_jellyfin_user_id }}"
YOUTUBE_ID="{{ youtube_jellyfin_youtube_library_id }}"
YOUTUBE_PATH="/storage/media/YouTube"
JELLYFIN_DOMAIN="https://jellyfin.titanium-server.thelux.family"
API_ENDPOINT="${JELLYFIN_DOMAIN}/Users/${USER_ID}/Items?parentId=${YOUTUBE_ID}&isPlayed=true&ApiKey=${API_KEY}"

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

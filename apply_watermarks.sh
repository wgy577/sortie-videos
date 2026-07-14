#!/usr/bin/env bash
set -euo pipefail

# Add one restrained ownership mark near the lower-right safe area.
# The source videos already contain a slow-moving mark through the content;
# together they resist simple cropping without cluttering the visualization.
# Originals are kept under originals/ on the first run.

ROOT="$(cd "$(dirname "$0")" && pwd)"
VIDEO_DIR="$ROOT/videos"
ORIGINAL_DIR="$ROOT/originals"
FONT="/System/Library/Fonts/Supplemental/Arial Bold.ttf"
MARK="$ROOT/_wgy_watermark.png"

command -v ffmpeg >/dev/null || { echo "ffmpeg is required" >&2; exit 1; }
mkdir -p "$ORIGINAL_DIR"

for current in "$VIDEO_DIR"/*.mp4; do
  name="$(basename "$current")"
  source="$ORIGINAL_DIR/$name"
  output="$VIDEO_DIR/.${name}.watermarked.mp4"

  if [[ ! -f "$source" ]]; then
    cp -p "$current" "$source"
  fi

  height="$(ffprobe -v error -select_streams v:0 -show_entries stream=height -of csv=p=0 "$source")"
  corner_h=$(( height / 34 ))

  ffmpeg -hide_banner -loglevel error -y -i "$source" -loop 1 -i "$MARK" \
    -filter_complex "[1:v]scale=-1:${corner_h},colorchannelmixer=aa=0.58[mark];[0:v][mark]overlay=x=W-w-W*0.032:y=H-h-H*0.032:shortest=1[v]" \
    -map "[v]" -map 0:a? \
    -c:v libx264 -preset slow -crf 18 -pix_fmt yuv420p \
    -c:a copy -metadata artist="HFSP-PPO" -movflags +faststart "$output"

  mv "$output" "$current"
  echo "watermarked: videos/$name"
done

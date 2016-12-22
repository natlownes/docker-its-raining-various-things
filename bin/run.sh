#!/usr/bin/env bash

text=$(mktemp --suffix=.txt)
speech=$(mktemp)
audio_dir="/media"

function cleanup {
  rm ${text}
}

trap cleanup EXIT

cat /dev/fd/0>${text}

text2wave -scale 5 -o ${speech} ${text} && \
ffmpeg \
  -y \
  -i "${audio_dir}/01.wav" \
  -i ${speech} \
  -i "${audio_dir}/02.wav" \
  -i ${speech} \
  -i "${audio_dir}/03.wav" \
  -filter_complex 'concat=5:v=0:a=1' \
  -f mp3 \
  pipe:1

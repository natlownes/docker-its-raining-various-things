#!/usr/bin/env bash

speech=$(mktemp)
outfile="$(mktemp --suffix=.mp3)"
audio_dir="/media"

echo "${1}" \
  | text2wave -scale 5 -o ${speech} && \
  ffmpeg \
    -y \
    -i "${audio_dir}/01.wav" \
    -i ${speech} \
    -i "${audio_dir}/02.wav" \
    -i ${speech} \
    -i "${audio_dir}/03.wav" \
    -filter_complex 'concat=5:v=0:a=1' \
    ${outfile} && \
    cat ${outfile}

#!/usr/bin/env bash

text=$(mktemp --suffix=.txt)
speech=$(mktemp)
audio_dir="/media/iverson"

function cleanup {
  rm ${text}
  rm ${speech}
}

trap cleanup EXIT

cat /dev/fd/0>${text}

text2wave -scale 2 -o ${speech} ${text} && \
#text2wave -o ${speech} ${text} && \
ffmpeg \
  -y \
  -i "${audio_dir}/01.wav" \
  -i ${speech} \
  -i "${audio_dir}/02.wav" \
  -i ${speech} \
  -i "${audio_dir}/03.wav" \
  -i ${speech} \
  -i "${audio_dir}/04.wav" \
  -i ${speech} \
  -i "${audio_dir}/05.wav" \
  -i ${speech} \
  -i "${audio_dir}/06.wav" \
  -i ${speech} \
  -i "${audio_dir}/07.wav" \
  -i ${speech} \
  -i "${audio_dir}/08.wav" \
  -i ${speech} \
  -i "${audio_dir}/09.wav" \
  -i ${speech} \
  -i "${audio_dir}/10.wav" \
  -i ${speech} \
  -i "${audio_dir}/11.wav" \
  -i ${speech} \
  -i "${audio_dir}/12.wav" \
  -i ${speech} \
  -i "${audio_dir}/13.wav" \
  -i ${speech} \
  -i "${audio_dir}/14.wav" \
  -i ${speech} \
  -i "${audio_dir}/15.wav" \
  -i ${speech} \
  -filter_complex 'concat=30:v=0:a=1' \
  -f mp3 \
  pipe:1

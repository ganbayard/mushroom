#!/bin/bash

input_folder="../data/vidoes/"
output_folder="../data/mushroom_frames/"
frame_rate="1/2"
output_format="_%02d.jpg"

mkdir -p "${output_folder}"

for video_file in "${input_folder}"*.mp4; do
    video_name=$(basename "${video_file}" .mp4)
    
    ffmpeg -i "${video_file}" -vf "fps=${frame_rate}" -q:v 2 -vsync 0 "${output_folder}/${video_name}${output_format}"
done
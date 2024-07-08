#!/bin/bash

input_folder="data/mushroom"
output_folder="data/resize_mushroom"

# Create the output folder if it doesn't exist
mkdir -p "$output_folder"

# Loop through all image files in the input folder
for input_file in "$input_folder"/*.jpg; do
    # Extract the file name without extension
    file_name=$(basename "$input_file" .jpg)

    # Get the width of the image
    width=$(ffprobe -v error -select_streams v:0 -show_entries stream=width -of csv=s=x:p=0 "$input_file")

    # Calculate the size for the crop filter
    crop_size=$(($width < 1800 ? $width : 1800))

    # Output file path
    output_file="$output_folder/${file_name}_square.jpg"

    # Crop the image and save it to the output folder
    ffmpeg -i "$input_file" -vf "crop=$crop_size:$crop_size:((in_w-out_w)/2):((in_h-out_h)/2)" "$output_file"

    echo "Processed: $input_file"
done

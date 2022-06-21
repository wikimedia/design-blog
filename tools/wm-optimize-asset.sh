#!/bin/sh
#
# Convert and resize assets

# @author: Daniel Souza <me@posix.dev.br>
# @license: MIT
# @deps: imagemagick, ffmpeg
# @usage:
#     wm-optimize-asset.sh file.[jpg|png|gif]
#     wm-optimize-asset.sh src/*


# References 
# https://gist.github.com/Vestride/278e13915894821e1d6f
# https://gist.github.com/gvoze32/95f96992a443e73c4794c342a44e0811
# https://support.google.com/youtube/answer/1722171

# Maximum render width on Design Blog is 720px.
# Target is 2x to better support HiDPI screens and scaling.
width=1440

# Library
# TODO: Make resize an optional parameter
# TODO: Export multiple formats to ensure feature support

convertToWebP() {
  # Browser support: https://caniuse.com/webp

  inputFile="$1"
  outputFile="${inputFile%.*}.webp"

  convert -quality 95 "$inputFile" "$outputFile"

  # Use '\>' to prevent upscaling
  # convert -quality 95 -resize ${width}x\> "$inputFile" "$outputFile"
}

convertToWebM() {
  # Browser support: https://caniuse.com/webm

  inputFile="$1"
  outputFile="${inputFile%.*}.webm"

  # VP8
  # ffmpeg -y -i "${inputFile}" "${videoParams}" -c:v libvpx -quality good -b:v 500K -crf 12 "${outputFile}"

  # VP9
  # TODO: Prevent FFmpeg from logging to disk
  ffmpeg -i "${inputFile}" -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 1 -an -f null /dev/null && \
  ffmpeg -i "${inputFile}" -movflags faststart -pix_fmt yuv420p -r 24 \
    -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 2 -c:a libopus "${outputFile}"
}

convertToMP4() {
  # Browser support: https://caniuse.com/mp4

  inputFile="$1"
  outputFile="${inputFile%.*}.mp4"

  ffmpeg -i "${inputFile}" -movflags faststart -pix_fmt yuv420p -r 24 \
    -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "${outputFile}"

  # TODO: Prevent scaling from upscaling

  # Param to rescale while preserving aspect ratio (ffmpeg require even numbers)
  # scale="720:trunc(ow/a/2)*2"
}

# TODO: Add feature to convert audio

# Main
for file in "${@}"; do
  fileExt="${file##*.}"

  if [ "$fileExt" = 'png' ] || [ "$fileExt" = 'PNG' ]; then
    convertToWebP "$file"

  elif [ "$fileExt" = 'jpg' ] || [ "$fileExt" = 'JPG' ] || [ "$fileExt" = 'jpeg' ] || [ "$fileExt" = 'JPEG' ]; then
    convertToWebP "$file"

  elif [ "$fileExt" = 'gif' ] || [ "$fileExt" = 'GIF' ]; then
    convertToWebM "$file"
  fi
done

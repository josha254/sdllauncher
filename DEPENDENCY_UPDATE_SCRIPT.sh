#!/bin/bash
echo "This script will update dependencies for SDLLauncher."
echo "These dependencies are: yt-dlp and spotdl."
echo "Are you sure you want to continue? [y/n - Press ENTER after selecting]"
read OPTION
if [[ $OPTION = y ]]; then
     pip install spotdl --upgrade
     pip install yt-dlp --upgrade
fi
echo "Script completed - press CTRL-C to exit."
while true
     do
          sleep 1000000000
     done

#!/bin/bash
# SpotDL frontend
# prompt user to paste in link
echo -e "\e[45;37;1;4mSDLLauncher - Rev. 1.0.0 - (c) 2025 josha254 / Josh A. - https://josite.neocities.org\e[0m"
echo "This software does NOT come with warranty and is licenced under the GPL v3. The GPL v3 basically allows you to do whatever you please with this software, copy it, modify it, distribute the modified version.. However, you MUST have credit to the original author somewhere. A copy of this can be found in the LICENCE file in the directory the software is in."
echo "Please enter a Spotify search query or link now, then strike ENTER."
read LINK
echo "The link entered was" $LINK"."
echo "Please enter the directory you want to download the music to, then strike ENTER."
# prompt user to paste in 
echo "[!] You should create a directory you want to download the music to, then enter it here."
echo "**Please enter the directory correctly!**"
read DIR
cd $DIR
CDEXIT=$?
echo "[!] cd exited with code:" $CDEXIT
# if directory does not exist create it
# 0 = success, 1 = failure
if [[ $CDEXIT = 0 ]]; then
     echo -e "\e[34;5;1;4m*** OK ***\e[0m"
     echo "SpotDL executing in 5 seconds, press CTRL-C to cancel."
     sleep 5s
     echo "Executing SpotDL.."
     sleep 2s
     python -m spotdl $LINK
else
     echo -e "\e[31;5;1;4m*** cd failed. ***\e[0m"
     echo "SpotDL will NOT execute! Directory nonexistent. Create directory manually! Press CTRL-C to exit."
fi
echo "SpotDL completed. Please view error logs and press CTRL-C to exit."
while true
     do
          sleep 1000000000
     done

#!/bin/bash

if [ -e spigot.jar ]
then
  echo "spigot already existing!"
else
  curl -o spigot.jar https://destroystokyo.com/ci/job/Paper/lastSuccessfulBuild/artifact/paperclip.jar
fi

if [ -e cache ]; then
   echo "cache exists."
else
    mkdir cache
    cd cache || echo "no cache" || echo "no cache"
    echo "downloading minecraft 1.12"
    curl -o mojang_1.12.2.jar https://spigot.surge.sh/cache/mojang_1.12.2.jar
    echo "downloading patched 1.12"
    curl -o patched_1.12.2.jar https://spigot.surge.sh/cache/patched_1.12.2.jar
    cd ..
fi 

echo "eula=true" > eula.txt #accept eula

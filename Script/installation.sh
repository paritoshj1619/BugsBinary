#!/bin/bash

DIR="$(pwd)/bin"
if [[ $1 == "Linux" ]]; then
    if [ ! -d "$DIR" ]; then
        wget "https://github.com/paritoshj1619/BugsBinary/raw/master/Linux/bin.zip"
        unzip bin.zip
        rm -r bin.zip
    fi
elif [[ $2 == "MSYS" ]]; then
    echo "here"
    if [ ! -d "$DIR" ]; then
        powershell -command "Invoke-WebRequest -Uri https://github.com/paritoshj1619/BugsBinary/raw/master/Windows/bin.zip -OutFile bin.zip"
        7z.exe bin bin.zip
        rm -r bin.zip
    fi
elif [[ $3 == "Darwin" ]]; then
    if [ ! -d "$DIR" ]; then
        wget "https://github.com/paritoshj1619/BugsBinary/raw/master/MacOSx/bin.zip"
        unzip bin.zip
        rm -r bin.zip
    fi
else
    echo "Invalid operating system"
fi

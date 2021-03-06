#!/bin/bash

DIR="$(pwd)/bin"
if [[ $1 == "Linux" ]]; then
    if [ ! -d "$DIR" ]; then
        curl -OL "https://github.com/paritoshj1619/BugsBinary/raw/master/Linux/bin.zip"
        unzip bin.zip
        rm -r bin.zip
    fi
elif [[ $1 == "MSYS" ]]; then
    if [ ! -d "$DIR" ]; then
        curl -OL "https://github.com/paritoshj1619/BugsBinary/raw/master/Windows/bin.zip"
        powershell -command "Expand-Archive bin.zip"
        powershell -command "rm -r bin.zip"
    fi
elif [[ $1 == "Darwin" ]]; then
    if [ ! -d "$DIR" ]; then
        curl -OL "https://github.com/paritoshj1619/BugsBinary/raw/master/MacOs/bin.zip"
        unzip bin.zip
        rm -r bin.zip
    fi
else
    echo "Invalid operating system"
fi

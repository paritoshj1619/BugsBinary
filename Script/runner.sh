# !bin/bash

currPath=$(pwd)

# Arg1 -> OSTYPE
# Arg2 -> Serial Id 
# Arg3 -> Token
# Arg4 -> Host URL

if [[ $1 == "Linux" ]]; then
    export BugsAdb_Bin=$(pwd)/bin/BugsAdb
    export BugsScrcpy_Bin=$(pwd)/bin/BugsScrcpy
    export PATH="$PATH:$BugsAdb_Bin:$BugsScrcpy_Bin"     
    export token=$3
    export ADB_SERVER_SOCKET=tcp:$4:5038
    $BugsScrcpy_Bin/app/BugsScrcpy -s $2 --tunnel-host=$4 --tunnel-port=27185
fi
if [[ $1 == "Darwin" ]]; then
    export BugsAdb_Bin=$currPath/bin/BugsAdb
    export BugsScrcpy_Bin=$currPath/bin/BugsScrcpy
    export PATH="$PATH:$BugsAdb_Bin:$BugsScrcpy_Bin"
    export token=$3
    export ADB_SERVER_SOCKET=tcp:$4:5038
    $BugsScrcpy_Bin/app/BugsScrcpy -s $2 --tunnel-host=$4 --tunnel-port=27185
fi
if [[ $1 == "MSYS" ]]; then
    set BugsAdb_Bin=%currPath%/bin/BugsAdb
    set BugsScrcpy_Bin=%currPath%/bin/BugsScrcpy
    set PATH="%PATH%:%BugsAdb_Bin%:%BugsScrcpy_Bin%"
    set token=$3
    set ADB_SERVER_SOCKET=tcp:$4:5038
    echo PATH
    $BugsScrcpy_Binx/app/BugsScrcpy -s $2 --tunnel-host=$4 --tunnel-port=27185
fi
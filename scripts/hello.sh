#!/bin/bash

CurrTime=$(date +"%Y%m%d_%H%M%S")
PathToOutput="../output"
PathToLogs="../logs"
PathToHistory="$PathToLogs/history.txt"

if [ -n "$1" ]; then
    LogFile="$PathToLogs/$1.txt"
else
    LogFile="$PathToLogs/log-$CurrTime.txt"
fi

greeting() {
    echo "Hello from Bash!"
}
current_time() {
    echo "$CurrTime"
}
count_of_files() {
    find "$PathToOutput" -type f | wc -l
}
write_log () {
    mkdir -p "$PathToLogs"
    mkdir -p "$PathToOutput"
    {
        greeting
        current_time
        echo "Count of files in output directory: $(count_of_files)"
    } > "$LogFile"
}
append_history() {
    echo "$CurrTime | $(basename "$LogFile")" >> "$PathToHistory"
}

write_log
append_history
greeting

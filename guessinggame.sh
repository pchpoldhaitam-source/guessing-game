#!/usr/bin/env bash

# Count the files in this directory.
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

correct_answer=$(count_files)

echo "Guessing Game"
echo "How many files are in the current directory?"

while true; do
    read -r -p "Your guess: " guess

    if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a whole number."
        continue
    fi

    if (( 10#$guess < correct_answer )); then
        echo "Too low. Try again."
    elif (( 10#$guess > correct_answer )); then
        echo "Too high. Try again."
    else
        echo "Correct! Well done."
        break
    fi
done

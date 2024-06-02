#!/bin/bash
# This script is used to build the editor. It will check for dependencies and build the binary.

# --------------------- Dependencies "struct" ---------------------
dependencies="nasm"
objects="*.o spasm"
# -----------------------------------------------------------------

# Check if dependencies are installed
function dep_check() {
for dep in $dependencies; do
    if ! command -v "$dep" &> /dev/null; then
        echo "Hey there! This script currently requires: $dependencies"
        echo "$dep is not installed. Please install it."
        exit 1
    fi
done }

# Build the objects and final binary
function build_bin() {
    echo "booty"
}

function link_bin() {
    echo "booty2"
}

# Clean up the objects and binary
function clean() {
    for obj in $objects; do
        rm -f "$obj"
    done
}

# Help function and help me why did I choose to write a hex editor in assembly
function help_me() {
    echo "Usage: ./build.sh [clean | build | help]"
    echo "clean: Remove all object files and the binary."
    echo "build: Build the binary."
    echo "help: Display this help message."
}

# Main function / handler
function main() {
    if [[ "$1" == "clean" || "$1" == "c" ]]; then
        clean
    elif [[ "$1" == "build" ]]; then
        dep_check
        build_bin
        link_bin
    elif [[ "$1" == "help" ]]; then
        help_me
    else
        echo "Invalid argument. Please use 'clean', 'build', or 'help'."
    fi
}
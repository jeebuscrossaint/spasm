#!/bin/bash

# Function to compile assembly files
build() {

    # Create bin directory if it doesn't exist
    if [ ! -d bin ]; then
        mkdir bin
    fi

    # Find all assembly files in src and compile them to objects in bin
    for asm_file in src/*.asm; 
    do
        obj_file="bin/$(basename "${asm_file%.*}.o")"
        echo "Assembling $asm_file to $obj_file"
        as "$asm_file" -o "$obj_file"
    done

    # Link all objects into a final binary
    echo "Linking objects to create final binary"
    ld bin/*.o -o spasm
}

# Function to clean build artifacts
clean() {
    echo "Cleaning build artifacts"
    rm -f bin/*.o spasm a.out
}

# Parse command line arguments
case "$1" in
    c)
        clean
        ;;
    clean)
        clean
        ;;
    *)
        build
        ;;
esac

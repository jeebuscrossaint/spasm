# Function to build the project
build() {
    # Assemble each .s file into an .o file
    for asm_file in src/*.s; do
        obj_file="bin/$(basename "${asm_file%.*}.o")"
        echo "Assembling $asm_file to $obj_file"
        as "$asm_file" -o "$obj_file"
    done

    # Link all objects into a final binary
    echo "Linking objects to create final binary"
    ld bin/*.o -o spasm

    # build the c++ example file
    g++ test/test.cpp -o test/test
}

# Function to clean build artifacts
clean() {
    echo "Cleaning build artifacts"
    rm -f bin/*.o spasm a.out test/test
}

# Check if spasm binary exists
if [ -f "./spasm" ]; then
    clean
else
    build
fi
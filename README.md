# spasm

_______

A hex editor for the terminal and the simple man. Written in assembly and built using GNU Assembler and GNU Linker. Because thats all you need in life. Called "spasm" because it sounded funny at the time and had the word "asm" in it.

## Building

Needs Gas and LD to build. Run the build.sh script and you will be good to go. Keep in mind it only works under linux as it uses Linux syscalls, really wish there was only a standardized set of syscalls for all OSes, but as such is assembly. Also uses AT&T syntax, so if you are a masochist and use Intel syntax, you will have to convert it. **Important: If you are here you probably have g++ installed which is also technically a dependency since I have provided an example c++ program to test the hex editor, along with a txt file.**

### Special Thanks

thanks to gnu for making such banger tools and software
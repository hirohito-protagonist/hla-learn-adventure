# hla-learn-adventure
Learn High Level Assembly by practice.

## Getting started
1. [Download](http://www.plantation-productions.com/Webster/HighLevelAsm/dnld.html) compiler and follow installation instructions on the page for your operating system.
2. `Optional` [Download](http://www.nasm.us/) NASM - NASM here is used to emit asm files.
3. To check installation clone the repo and navigate to `src` folder then from command line type:
    
    `hal -v hello-world.hla`
4. If the compiler is working and on compilation there is no an error you are ready to go.  

To emit asm file it's possible to NASM  by specifying `-nasm` flag for compiler. Here is command to use for examples:
`hla -v -nasm hello-world.hla`
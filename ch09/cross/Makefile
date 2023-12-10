build: 
	echo "Building for Native..."
	make build_native
	echo "Building for Arm..."
	make build_arm_linux
	echo "Info..."
	./info.sh 

build_native: 
# builds for each file .c .zig .rs natively 
	zig cc hello.c -o out/x86_64/c_hello
	zig build-exe  hello.zig --name z_hello
	mv z_hello out/x86_64/
	rustc hello.rs -o out/x86_64/rs_hello
	make clean
build_arm_linux: 
# this would be compiling for raspberry pi 4
# target is aarch64 linux 
	zig cc -target arm-linux-gnueabihf hello.c  -o out/arm/c_hello
	zig build-exe -target arm-linux hello.zig --name z_hello
	mv z_hello out/arm/
# rustup target add armv7-unknown-linux-gnueabihf
# sudo apt install gcc-arm-linux-gnueabihf
	rustc --target=armv7-unknown-linux-gnueabihf -C linker=arm-linux-gnueabihf-gcc -o out/arm/rs_hello hello.rs
	make clean
clean: 
	rm *.o 
# Cross-Compiling between C, Rust and Zig

In this directory, we will be cross-compiling C, Zig, and Rust files 
along with looking at a `zig build` project and a `cargo` project. Our native target is `x86_64-linux` and our other target will be the Raspberry Pi 4 or `arm-linux-gnueabihf`.

For the single files we do provide a `Makefile` that will compile the programs for both targets and output them in their 
respective folder `out/x86_64` or `out/arm`. As shown below: 

```Makefile 
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
```

It is important to note the following setup is required 
for `rustc` to get the cross-compilation to work: 

```shell 
# add the target 
$ rustup target add armv7-unknown-linux-gnueabihf
# install the appropriate gcc compiler to be the linker 
$ sudo apt install gcc-arm-linux-gnueabihf
# now you're able to compile the code setting target and linker 
$ rustc --target=armv7-unknown-linux-gnueabihf -C linker=arm-linux-gnueabihf-gcc -o out/arm/rs_hello hello.rs
```

Zig objectively provides an easier experience since it does not 
by default depend on `libc`, therefore it is easily able to set and build for a given target. 

For a Zig project cross-compiling is a bit different, with the 
command becoming `zig build -Dtarget=arm-linux`. 

For `Cargo` projects you will need to edit `~/.cargo/config.toml` and add the following entry: 

```toml 
[target.armv7-unknown-linux-gnueabihf]
linker = "arm-linux-gnueabihf-gcc"
```

### Cross-Compiling C Traditional Way

```shell 
$ arm-linux-gnueabihf-gcc -static -o out/arm/c_hello hello.c
```

---

# Comparison Results

## Comparing: ./out/arm/c_hello and ./out/x86_64/c_hello

### ./out/arm/c_hello:

```shell
./out/arm/c_hello: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, for GNU/Linux 2.0.0, with debug_info, not stripped
```

### ./out/x86_64/c_hello:

```shell
./out/x86_64/c_hello: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, with debug_info, not stripped
```

## Comparing: ./out/arm/rs_hello and ./out/x86_64/rs_hello

### ./out/arm/rs_hello:

```shell
./out/arm/rs_hello: ELF 32-bit LSB pie executable, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-armhf.so.3, BuildID[sha1]=dce6da3485763504a25ff3e88b452a38b94ae9c0, for GNU/Linux 3.2.0, with debug_info, not stripped
```

### ./out/x86_64/rs_hello:

```shell
./out/x86_64/rs_hello: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=d88e2c52e6a7d6a359871ea7c01355cd9117b8e4, for GNU/Linux 3.2.0, with debug_info, not stripped
```

## Comparing: ./out/arm/z_hello and ./out/x86_64/z_hello

### ./out/arm/z_hello:

```shell
./out/arm/z_hello: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), statically linked, with debug_info, not stripped
```

### ./out/x86_64/z_hello:

```shell
./out/x86_64/z_hello: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), statically linked, with debug_info, not stripped
```

--- 

# Running Commands Locally with Qemu

If you would like to run the commands locally using `qemu` to emulate a Raspberry Pi, or well any `arm` 32bit device then you may use the following commands for each of the different kinds of files: 

```shell
# install necessary dependencies
$ sudo apt install binutils-arm-linux-gnueabihf binutils-arm-linux-gnueabihf-dbg qemu-user
$ cd out/arm
# running c_hello, need to link with arm-linux-gnueabihf
$ qemu-arm -L /usr/arm-linux-gnueabihf ./c_hello 
# zig doesnt depend on libc by default so just run with no flags 
$ qemu-arm ./z_hello 
# rust requires libc, so run similar to c file
$ qemu-arm -L /usr/arm-linux-gnueabihf ./rs_hello 
```

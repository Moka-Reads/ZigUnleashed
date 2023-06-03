ZIG_EXE = fn_ptr.zig add.zig anytype_mult.zig swap.zig hash.zig max.zig variadic.zig vis.zig
ZIG_TEST = fib.zig vis_fns.zig
RS = fn_ptr.rs
CPP = max.cpp
C = variadic.c swap.c

# C compiler to use 
CC = clang 

# C++ compiler to use
CC+ =  g++ 

compile_zig: 
	$(foreach file, $(ZIG_EXE), zig build-exe $(file);)
	$(foreach test, $(ZIG_TEST), zig test $(test);)
compile_rs: 
	rustc $(RS) -o fn_ptr_rs 
compile_c: 
	$(CC) swap.c -o swap_c 
	$(CC) variadic.c -o variadic_c
compile_cpp: 
	$(CC+) $(CPP) -o max_cpp 

compile: 
	make compile_zig 
	make compile_rs 
	make compile_c 
	make compile_cpp
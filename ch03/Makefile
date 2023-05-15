# all zig executable files in ch03 
ZIG_EXE = add.zig fn_ptr.zig hash.zig swap.zig 

# all zig test files 
ZIG_TEST = fib.zig

# all rust files in ch03 
RS = fn_ptr.rs 

# all c files in ch03 
C = swap.c 

# C compiler used 
CC = clang 

compile_zig: 
	$(foreach file, $(ZIG_EXE), zig build-exe $(file);)
	$(foreach test, $(ZIG_TEST), zig test $(test);)
compile_rs: 
	rustc fn_ptr.rs -o fn_ptr_rs 
compile_c: 
	$(CC) swap.c -o swap_c 

compile: 
	make compile_zig 
	make compile_rs 
	make compile_c 
C_FILES = simple_dyn_array.c simple_pointer.c mem_leak.c
ZIG_EXE_FILES = defer_add.zig mem_leak.zig sentinel-terminated_pointer.zig serde.zig vector.zig fixed_buffer.zig exercises/ex4.zig exercises/ex3.zig exercises/ex2.zig exercises/ex1.zig
ZIG_TEST_FILES = pointer_conversions.zig alloc_types.zig pointer_types.zig gpa.zig anyopaque.zig

CC = clang
compile_c: 
	$(foreach file, $(C_FILES), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
compile_zig: 
	$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)
	$(foreach file, $(ZIG_TEST), \
		zig test $(file);)
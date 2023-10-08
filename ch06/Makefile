C_FILES = simple_dyn_array.c simple_pointer.c
ZIG_EXE_FILES = printf.zig
ZIG_TEST_FILES = pointer_conversions.zig alloc_types.zig pointer_types.zig

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
	$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)
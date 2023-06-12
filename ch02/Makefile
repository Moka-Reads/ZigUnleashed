C_FILES = switch_example.c
RS_FILES = match_example.rs
ZIG_EXE_FILES = while.zig if_example.zig continue_example.zig nested_for.zig while_reg1000.zig switch_example.zig data_types.zig while_inline1000.zig if_else_example.zig break_example.zig for.zig exercises/exercise1.zig exercises/exercise2.zig
ZIG_TEST_FILES = exercises/user_manifesto.txt

CC = clang
RUSTC = rustc
compile_c: 
	$(foreach file, $(C), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
compile_rs: 
	$(foreach file, $(RS), \
		$(eval out=$(patsubst %.rs,%_rs,$(file))) \
		$(RUSTC) $(file) -o $(out);)
compile_zig: 
	$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)
	$(foreach file, $(ZIG_TEST), \
		zig test $(file);)
	$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)
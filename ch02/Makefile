C_FILES = switch_example.c
RS_FILES = match_example.rs
ZIG_EXE_FILES = while.zig while_inline1000.zig for.zig break_example.zig if_example.zig while_reg1000.zig if_else_example.zig nested_for.zig continue_example.zig switch_example.zig exercises/exercise2.zig exercises/exercise1.zig
ZIG_TEST_FILES = data_types.zig
ZIG_PROJS = our_lib
CC = zig cc
RUSTC = rustc
compile_c: 
	$(foreach file, $(C_FILES), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
compile_rs: 
	$(foreach file, $(RS_FILES), \
		$(eval out=$(patsubst %.rs,%_rs,$(file))) \
		$(RUSTC) $(file) -o $(out);)
compile_zig: 
	$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)
	$(foreach file, $(ZIG_TEST), \
		zig test $(file);)
	$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)
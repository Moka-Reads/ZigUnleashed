C_FILES = variadic.c swap.c
CPP_FILES = max.cpp
RS_FILES = fn_ptr.rs
ZIG_EXE_FILES = max.zig vis.zig anytype_mult.zig variadic.zig fn_ptr.zig add.zig swap.zig hash.zig
ZIG_TEST_FILES = fib.zig vis_fns.zig exercises/exercise2.zig exercises/exercise1.zig exercises/exercise3.zig

CC = clang
CC+ = g++
RUSTC = rustc
compile_c: 
	$(foreach file, $(C_FILES), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
compile_cpp: 
	$(foreach file, $(CPP_FILES), \
		$(eval out=$(patsubst %.cpp,%_cpp,$(file))) \
		$(CC+) $(file) -o $(out);)
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
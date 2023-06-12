ZIG_EXE = fn_ptr.zig add.zig anytype_mult.zig swap.zig hash.zig max.zig variadic.zig vis.zig
ZIG_TEST = fib.zig vis_fns.zig exercises/exercise1.zig exercises/exercise2.zig exercises/exercise3.zig
ZIG_PROJS = 
RS = fn_ptr.rs
CPP = max.cpp
C = variadic.c swap.c
CC = clang
CC_OUT = $(patsubst %.c,%_c,$(C))
CC+ = g++
CPP_OUT = $(patsubst %.cpp,%_cpp,$(CPP))
RUSTC = rustc
RS_OUT = $(patsubst %.rs,%_rs,$(RS))
compile_c: 
	$(foreach file, $(C), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
compile_cpp: 
	$(foreach file, $(CPP), \
		$(eval out=$(patsubst %.cpp,%_cpp,$(file))) \
		$(CC+) $(file) -o $(out);)
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
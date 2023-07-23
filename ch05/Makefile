C_FILES = number.c union_undef.c 
CPP_FILES = methods.cpp
ZIG_EXE_FILES = person.zig struct_intro.zig status.zig number.zig enums.zig status_expanded.zig point.zig packed.zig union_undef.zig

CC = clang
CC+ = g++
compile_c: 
	$(foreach file, $(C_FILES), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
	clang -lextern -L . link_extern.c -o link_extern
compile_cpp: 
	$(foreach file, $(CPP_FILES), \
		$(eval out=$(patsubst %.cpp,%_cpp,$(file))) \
		$(CC+) $(file) -o $(out);)
compile_zig: 
	$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)
	$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)

	zig build-lib -dynamic -lc extern.zig 
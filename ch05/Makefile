C_FILES = union_undef.c number.c
CPP_FILES = methods.cpp
ZIG_EXE_FILES = packed.zig point.zig person.zig union_undef.zig struct_intro.zig number.zig status.zig status_expanded.zig
ZIG_TEST_FILES = tagged_union.zig

CC = clang
CC+ = g++
compile_c: 
	$(foreach file, $(C_FILES), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)

compile_cpp: 
	$(foreach file, $(CPP_FILES), \
		$(eval out=$(patsubst %.cpp,%_cpp,$(file))) \
		$(CC+) $(file) -o $(out);)
compile_zig: 
	$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)
	$(foreach file, $(ZIG_TEST), \
		zig test $(file);)
	$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)

compile_link: 
	# compile extern as shared lib 
	zig build-lib -dynamic extern.zig 
# compile link_extern.c with extern.zig 
	$(CC) link_extern.c -lextern -L./ -o link_extern
	echo "To run link_extern, first run 'export LD_LIBRARY_PATH=.'"
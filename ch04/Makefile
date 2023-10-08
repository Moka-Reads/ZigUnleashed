C_FILES = sentinel.c dynArray.c slice_alloc.c
ZIG_EXE_FILES = implicit_arr.zig eql_sent.zig arr_to_sent.zig sent_arr.zig search_sent.zig length_sent.zig split_sent.zig copy_sent.zig sent_to_str.zig slicing_arr.zig transpose.zig multidim_iter.zig sent_to_slice.zig slice_alloc.zig tester.zig concat_sent.zig reshape.zig sent_slice.zig dynArray.zig rev_sent.zig flatten.zig multidim.zig
ZIG_TEST_FILES = exercises/exercise2.zig exercises/exercise1.zig exercises/exercise3.zig

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
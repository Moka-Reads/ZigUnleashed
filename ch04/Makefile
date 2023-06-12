C_FILES = sentinel.c dynArray.c slice_alloc.c
ZIG_EXE_FILES = multidim.zig dynArray.zig arr_to_sent.zig multidim_iter.zig transpose.zig split_sent.zig concat_sent.zig sent_slice.zig sent_arr.zig copy_sent.zig eql_sent.zig sent_to_slice.zig search_sent.zig implicit_arr.zig reshape.zig length_sent.zig flatten.zig sent_to_str.zig slice_alloc.zig rev_sent.zig slicing_arr.zig tester.zig
ZIG_TEST_FILES = exercises/exercise1.zig exercises/exercise2.zig exercises/exercise3.zig

CC = clang
compile_c: 
	$(foreach file, $(C), \
		$(eval out=$(patsubst %.c,%_c,$(file))) \
		$(CC) $(file) -o $(out);)
compile_zig: 
	$(foreach file, $(ZIG_EXE), \
		zig build-exe $(file);)
	$(foreach file, $(ZIG_TEST), \
		zig test $(file);)
	$(foreach proj, $(ZIG_PROJS), \
		cd $(proj) && zig build;)
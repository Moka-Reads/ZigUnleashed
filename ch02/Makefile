ZIG_EXE_BETA = break_example.zig data_types.zig if_else_example.zig if_example.zig nested_for.zig switch_example.zig while_inline1000.zig while_reg1000.zig while.zig 
ZIG_EXE_EDGE = continue_example.zig for.zig 
RS = match_example.rs 
C = switch_example.c 

# compiles all zig code using v0.10
compile_zig_beta: 
	# change to beta compiler 
	sudo snap refresh zig --beta 

	# compile projects 
	cd id_man
	zig build
	cd ../our_lib 
	zig build 
	cd ..

	$(foreach file, $(ZIG_EXE_BETA), zig build-exe $(file);)

# compiles all zig code using v0.11
compile_zig_edge: 
	# change to edge compiler 
	sudo snap refresh zig --edge

	$(foreach file, $(ZIG_EXE_EDGE), zig build-exe $(file);)

compile_zig: 
	make compile_zig_beta
	make compile_zig_edge

compile_rs: 
	rustc $(RS)

compile_c: 
	clang $(C)

compile: 
	make compile_zig
	make compile_rs 
	make compile_c 



	
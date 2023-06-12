compile_ch01:
	cd ch01 && make compile_zig

compile_ch02:
	cd ch02 && make compile_c && \
	make compile_rs && \
	make compile_zig

compile_ch03:
	cd ch03 && make compile_c && \
	make compile_cpp && \
	make compile_rs && \
	make compile_zig

compile_ch04:
	cd ch04 && make compile_c && \
	make compile_zig

compile_all: compile_ch01 compile_ch02 compile_ch03 compile_ch04

clean: 
	find ./*/ -type f -executable -exec rm {} \;
	rm -f ./*/*.o && rm -f ./*/exercises/*.o

readme: 
	go run readme.go 
git: 
	make readme
	cd .. && make clean_code
	git add -A
	git commit -m "added latest changes"
	git push

compile_all: 
	make compile_ch01
	make compile_ch02
	make compile_ch03

compile_ch01: 
	cd ch01 && zig build-exe hello_world.zig 

compile_ch02: 
	cd ch02 && make compile 

compile_ch03: 
	cd ch03 && make compile 
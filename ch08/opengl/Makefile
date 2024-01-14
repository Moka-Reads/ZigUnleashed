FLAGS = -lglfw -lGLEW -lGL

build: 
	gcc -o hello_c hello_triangle.c $(FLAGS)
	zig build-exe hello_triangle.zig -lc $(FLAGS)
# Zig Unleashed 
## A Comprehensive Guide to Robust and Optimal Programming 

> In this repository, you will find code samples for each chapter of the book. 
> The book mentions the name of each file, which corresponds to the respective file in this repository.

### Chapters  
- [Chapter 01: Introduction](https://github.com/MKProj/ZigUnleashed/tree/main/ch01)  
- [Chapter 02: The Basics](https://github.com/MKProj/ZigUnleashed/tree/main/ch02)  
- [Chapter 03: Functions](https://github.com/MKProj/ZigUnleashed/tree/main/ch03)  
- [Chapter 04: Arrays and Slices](https://github.com/MKProj/ZigUnleashed/tree/main/ch04)  
- [Chapter 05: Struct, Enums and Unions](https://github.com/MKProj/ZigUnleashed/tree/main/ch05)  
- [Chapter 06: Pointers and Memory Management](https://github.com/MKProj/ZigUnleashed/tree/main/ch06)  
- [Chapter 07: Error Handling](https://github.com/MKProj/ZigUnleashed/tree/main/ch07)  
- [Chapter 08: Interfacing with C](https://github.com/MKProj/ZigUnleashed/tree/main/ch08)  
- [Chapter 09: Advance Topics](https://github.com/MKProj/ZigUnleashed/tree/main/ch09)  
---
## Software Requirements
It is recommended to use a `linux` operating system as we use `Makefile` extensively throughout this repository, however, you may use `Windows` (recommended to use `zig cc/c++` as the `C/C++` compiler respectively). 

Required: 
- `zig`: `v0.11.0`
- `rustc`: `> v1.63`
- `clang/gcc`: `v13.0.0/v11.4.0`
- `g++`: `v11.4.0`
- `make`: `v4.3`

For `ch09`'s cross-compilation you will need the following if you would like to target the Raspberry Pi 4: 

Dependencies:
```shell 
$ sudo apt install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf binutils-arm-linux-gnueabihf-dbg qemu-user
```

Rust target: `rustup target add armv7-unknown-linux-gnueabihf`
  
---


# Statistics

## File and Line Distribution

![File and Line Distribution Plot](statistics_plot.png)



# Statistics per Chapter


## Chapter 1: Introduction

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| Zig        | 1                 | 8             |
| **Total**  | **1**             | **8**         |


## Chapter 2: The Basics

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| Zig        | 15                | 328           |
| C          | 1                 | 16            |
| Rust       | 1                 | 9             |
| **Total**  | **17**            | **353**       |


## Chapter 3: Functions

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| Zig        | 13                | 269           |
| C++        | 1                 | 22            |
| C          | 2                 | 43            |
| Rust       | 1                 | 16            |
| **Total**  | **17**            | **350**       |


## Chapter 4: Arrays and Slices

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| C          | 3                 | 123           |
| Zig        | 25                | 454           |
| **Total**  | **28**            | **577**       |


## Chapter 5: Struct, Enums and Unions

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| Zig        | 10                | 227           |
| C          | 3                 | 82            |
| C++        | 1                 | 31            |
| **Total**  | **14**            | **340**       |


## Chapter 6: Pointers and Memory Management

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| C          | 9                 | 93            |
| Zig        | 17                | 2135          |
| **Total**  | **26**            | **2228**      |


## Chapter 7: Error Handling

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| C          | 1                 | 15            |
| Rust       | 1                 | 26            |
| C++        | 1                 | 13            |
| Zig        | 1                 | 21            |
| **Total**  | **4**             | **75**        |


## Chapter 8: Interfacing with C

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| Zig        | 4                 | 22062         |
| C          | 4                 | 258           |
| **Total**  | **8**             | **22320**     |


## Chapter 9: Advance Topics

| Language   | Number of Files   | Total Lines   |
|:-----------|:------------------|:--------------|
| C          | 1                 | 6             |
| Rust       | 2                 | 6             |
| Zig        | 3                 | 99            |
| **Total**  | **6**             | **111**       |


package main

// This file is intended to automatically generate README.md
// Given the current code available and the expected chapters, it will write the appropriate content

import (
	"fmt"
	"os"
)

const header = `# Zig Unleashed 
## A Comprehensive Guide to Robust and Optimal Programming 

In this repository, you will find code samples for each chapter of the book. The book mentions the name of each file, which corresponds to the respective file in this repository.

### Chapters  

`

var chaptersMap = map[int]string{
	1: "Introduction",
	2: "The Basics",
	3: "Functions",
	4: "Arrays and Slices",
	5: "Struct, Enums and Unions",
	6: "Pointers and Memory Management",
	7: "Error Handling",
	8: "Interfacing with C",
	9: "Advance Topics",
}

func format(chapter string, chap_num int) string {
	var c string
	if chap_num < 10 {
		c = fmt.Sprintf("0%d", chap_num)
	} else {
		c = fmt.Sprintf("%d", chap_num)
	}
	return fmt.Sprintf("- [Chapter %s: %s](https://github.com/MKProj/ZigUnleashed/tree/main/ch%s)  \n", c, chapter, c)
}

func if_exists(chap_num int) bool {
	var dir string
	if chap_num < 10 {
		dir = fmt.Sprintf("ch0%d", chap_num)
	} else {
		dir = fmt.Sprintf("ch%d", chap_num)
	}
	_, err := os.Stat(dir)
	if os.IsNotExist(err) {
		return false
	} else {
		return true
	}
}

func main() {
	// open readme
	readme, _ := os.Create("./README.md")
	readme.WriteString(header)
	for chap_num := 1; chap_num < 10; chap_num += 1 {
		chapter := chaptersMap[chap_num]
		if if_exists(chap_num) {
			readme.WriteString(format(chapter, chap_num))
		}
	}
}

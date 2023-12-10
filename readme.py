import os
import re
import matplotlib.pyplot as plt
from tabulate import tabulate

chapters_map = {
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

header = """# Zig Unleashed 
## A Comprehensive Guide to Robust and Optimal Programming 

> In this repository, you will find code samples for each chapter of the book. 
> The book mentions the name of each file, which corresponds to the respective file in this repository.

### Chapters  
"""

software_req = """## Software Requirements
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
  
"""


def format(chapter, chap_num):
    c = f"0{chap_num}" if chap_num < 10 else str(chap_num)
    return f"- [Chapter {c}: {chapter}](https://github.com/MKProj/ZigUnleashed/tree/main/ch{c})  \n"

def if_exists(chap_num):
    directory = f"ch0{chap_num}" if chap_num < 10 else f"ch{chap_num}"
    return os.path.exists(directory)

def is_zig_project(directory):
    build_zig_path = os.path.join(directory, "build.zig")
    return os.path.exists(build_zig_path)

def count_lines(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        return sum(1 for line in file)

def get_language(file_name):
    ext = file_name.split('.')[-1].lower()
    if ext in ("c", "h"):
        return "C"
    elif ext in ("cpp", "hpp", "cc", "cxx"):
        return "C++"
    elif ext == "zig":
        return "Zig"
    elif ext == "rs":
        return "Rust"
    else:
        return "Unknown"

def list_files_in_directory(directory, language_files):
    for root, _, files in os.walk(directory):
        for file_name in files:
            if file_name.lower() != "makefile":  # Ignore files named "Makefile" (case-insensitive)
                file_path = os.path.join(root, file_name)
                language = get_language(file_name)
                if language != "Unknown":
                    line_count = count_lines(file_path)
                    language_files.setdefault(language, {"files": 0, "lines": 0})
                    language_files[language]["files"] += 1
                    language_files[language]["lines"] += line_count


def process_ch_directories(base_directory):
    ch_pattern = re.compile(r'ch(\d+)')

    overall_language_files = {}  # Dictionary to store overall file counts and line counts for each language

    # Find and sort 'ch*' directories by numerical part
    ch_directories = [d for d in os.listdir(base_directory) if os.path.isdir(os.path.join(base_directory, d))]
    ch_directories.sort(key=lambda x: int(ch_pattern.match(x).group(1)) if ch_pattern.match(x) else 0)

    total_files = 0
    total_lines = 0

    for dir_name in ch_directories:
        full_directory_path = os.path.join(base_directory, dir_name)
        print(f"\nProcessing directory: {full_directory_path}")

        if not is_zig_project(full_directory_path):
            language_files = {}
            list_files_in_directory(full_directory_path, language_files)

            # Update overall file counts and line counts for each language
            for language, stats in language_files.items():
                overall_language_files.setdefault(language, {"files": 0, "lines": 0})
                overall_language_files[language]["files"] += stats["files"]
                overall_language_files[language]["lines"] += stats["lines"]
                total_files += stats["files"]
                total_lines += stats["lines"]

    # Set up colors for each language
    language_colors = {
        "C": "blue",
        "C++": "green",
        "Zig": "orange",
        "Rust": "red",
    }

    # Create a bar chart for overall language distribution (Number of Files and Total Lines)
    plt.figure(figsize=(12, 5))

    # Number of Files
    plt.subplot(1, 2, 1)
    labels_files = list(overall_language_files.keys())
    counts_files = [stats["files"] for stats in overall_language_files.values()]
    colors_files = [language_colors[lang] for lang in labels_files]
    plt.bar(labels_files, counts_files, color=colors_files)
    plt.xlabel('Languages')
    plt.ylabel('Number of Files')
    plt.title('Overall File Distribution by Language')

    # Total Lines
    plt.subplot(1, 2, 2)
    labels_lines = list(overall_language_files.keys())
    counts_lines = [stats["lines"] for stats in overall_language_files.values()]
    colors_lines = [language_colors[lang] for lang in labels_lines]
    plt.bar(labels_lines, counts_lines, color=colors_lines)
    plt.xlabel('Languages')
    plt.ylabel('Total Lines')
    plt.title('Overall Line Distribution by Language')

    plt.tight_layout()
    plt.savefig('statistics_plot.png')
    plt.close()

    # Create a markdown table for statistics
    table_headers = ["Language", "Number of Files", "Total Lines", "Percentage of Total Files", "Percentage of Total Lines"]
    table_data = []
    for language, stats in overall_language_files.items():
        percentage_files = (stats["files"] / total_files) * 100 if total_files > 0 else 0
        percentage_lines = (stats["lines"] / total_lines) * 100 if total_lines > 0 else 0
        table_data.append([language, stats["files"], stats["lines"], f"{percentage_files:.2f}%", f"{percentage_lines:.2f}%"])

    markdown_table = tabulate(table_data, headers=table_headers, tablefmt="github")
    with open('README.md', 'w') as readme:
        readme.write(header)
        for chap_num in range(1, 10):
            chapter = chapters_map.get(chap_num, "")
            if if_exists(chap_num):
                readme.write(format(chapter, chap_num))
        readme.write("---\n")
        readme.write(software_req)
        readme.write("---\n")
        readme.write("\n\n# Statistics\n\n")
        readme.write(f"## File and Line Distribution\n\n")
        readme.write(f"![File and Line Distribution Plot](statistics_plot.png)\n\n")
        readme.write(f"## Table\n\n")
        readme.write(markdown_table)

if __name__ == "__main__":
    base_directory = "."

    if os.path.exists(base_directory):
        process_ch_directories(base_directory)
    else:
        print("Base directory not found.")

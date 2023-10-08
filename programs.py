import os
import re

def get_language(file_name):
    ext = file_name.split('.')[-1]
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

def is_zig_project(directory):
    build_zig_path = os.path.join(directory, "build.zig")
    return os.path.exists(build_zig_path)

def list_files_in_directory(directory):
    file_info_list = []  # List to store file information

    for root, _, files in os.walk(directory):
        for file_name in files:
            if file_name.lower() != "makefile":  # Ignore files named "Makefile" (case-insensitive)
                file_path = os.path.join(root, file_name)
                language = get_language(file_name)
                file_info_list.append((file_name, language))  # Store file information as a tuple

    # Sort the file information list by language
    sorted_file_info = sorted(file_info_list, key=lambda x: x[1])

    for file_name, language in sorted_file_info:
        print(f"File: {file_name}, Language: {language}")

def process_ch_directories(base_directory):
    ch_pattern = re.compile(r'ch(\d+)')

    # Find and sort 'ch*' directories by numerical part
    ch_directories = [d for d in os.listdir(base_directory) if os.path.isdir(os.path.join(base_directory, d))]
    ch_directories.sort(key=lambda x: int(ch_pattern.match(x).group(1)) if ch_pattern.match(x) else 0)

    for dir_name in ch_directories:
        full_directory_path = os.path.join(base_directory, dir_name)
        print(f"\nProcessing directory: {full_directory_path}")

        if is_zig_project(full_directory_path):
            print("Zig project directory")
        else:
            list_files_in_directory(full_directory_path)

if __name__ == "__main__":
    base_directory = "."

    if os.path.exists(base_directory):
        process_ch_directories(base_directory)
    else:
        print("Base directory not found.")

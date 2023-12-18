import os
import sys

def detect_file_type(file_path):
    if not os.path.exists(file_path):
        return "Not Found"

    with open(file_path, 'r') as file:
        content = file.read()
        if "fn main" in content:
            return "Binary"
        elif "test" in content and "fn main" not in content:
            return "Test"
        else:
            return "Unknown"

def process_directory(base_directory):
    binary_files = []
    test_files = []

    for root, dirs, files in os.walk(base_directory):
        # Exclude the zig-cache directory
        dirs[:] = [d for d in dirs if d != 'zig-cache']

        for file in files:
            if file.endswith('.zig'):
                file_path = os.path.relpath(os.path.join(root, file), base_directory)
                
                # Check if base/exercises exists
                exercises_path = os.path.join(base_directory, "exercises", file_path)
                file_path_with_exercise = exercises_path if os.path.exists(exercises_path) else file_path

                file_type = detect_file_type(os.path.join(root, file))

                if file_type == "Binary":
                    binary_files.append(file_path_with_exercise)
                elif file_type == "Test":
                    test_files.append(file_path_with_exercise)

    return binary_files, test_files

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python check_files.py <base_directory>")
        sys.exit(1)

    base_directory = sys.argv[1]
    binary_files, test_files = process_directory(base_directory)

    print("\nBinary Files:")
    print(" ".join(file for file in binary_files))

    print("\nTest Files:")
    print(" ".join(file for file in test_files))

import os
import subprocess 
import re 

chapter_dirs = [f"ch{chapter:02d}" for chapter in range(1, 7)]

def change_compiler(chapter_dirs, lang):
    found_in_any_chapter = False

    # Iterate over all chapters
    for chapter_dir in chapter_dirs:
        makefile_path = os.path.join(chapter_dir, "Makefile")

        # Check if the Makefile exists in the current chapter
        if os.path.exists(makefile_path):
            with open(makefile_path, 'r') as makefile:
                content = makefile.read()

            # Define the regular expression pattern for matching compiler lines
            pattern = re.compile(rf'^\s*{re.escape(lang)}\s*[:+]?=\s*(.*)$', re.MULTILINE)

            # Check if the compiler line exists in the Makefile
            if pattern.search(content):
                found_in_any_chapter = True
                break

    # Change the compiler in all chapters if it exists
    if found_in_any_chapter:
        new_compiler = input(f"Enter the new {lang} compiler: ")

        # Iterate over all chapters
        for chapter_dir in chapter_dirs:
            makefile_path = os.path.join(chapter_dir, "Makefile")

            # Check if the Makefile exists in the current chapter
            if os.path.exists(makefile_path):
                with open(makefile_path, 'r') as makefile:
                    content = makefile.read()

                # Replace existing compiler lines using regex
                content = pattern.sub(f'{lang} = {new_compiler}', content)

                # Write the modified content back to the Makefile
                with open(makefile_path, 'w') as makefile:
                    makefile.write(content)

                print(f"{lang} compiler in {chapter_dir} updated to {new_compiler}")
    else:
        print(f"No {lang} compiler lines found in any chapter.")

def compile_chapter(chapter):
    chapter_dir = f"ch{chapter:02d}"
    subprocess.run([f"cd {chapter_dir} && make compile_zig"], shell=True)

def change_default_compilers():
    # Add logic to change default compilers here
    print("Changing default compilers...")

def main():
    while True:
        print("\nOptions:")
        print("1. Compile a specific chapter")
        print("2. Change C compiler (broken)")
        print("3. Change C++ compiler (broken)")
        print("4. Compile all chapters")
        print("5. Clean")
        print("6. Quit")

        choice = input("Enter your choice (1-6): ")

        if choice == "1":
            chapter = input("Enter the chapter number: ")
            compile_chapter(int(chapter))
        elif choice == "2":
            for chapter in range(1, 7):
                chapter_dir = f"ch{chapter:02d}"
                change_compiler(chapter_dir, "CC")
        elif choice == "3":
            for chapter in range(1, 7):
                chapter_dir = f"ch{chapter:02d}"
                change_compiler(chapter_dir, "CC+")
        elif choice == "4":
            subprocess.run(["make compile_all"], shell=True)
        elif choice == "5":
            subprocess.run(["make clean"], shell=True)
        elif choice == "6":
            break
        else:
            print("Invalid choice. Please enter a valid option.")

if __name__ == "__main__":
    main()

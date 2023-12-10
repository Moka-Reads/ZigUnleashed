#!/bin/bash

# Directories to compare
dir1="./out/arm"
dir2="./out/x86_64"

# Output file
outfile="comparison.md"

# Empty the output file
> $outfile

# Iterate over files in the first directory
for file1 in "$dir1"/*; do
    # Get the corresponding file in the second directory
    file2="${file1/$dir1/$dir2}"

    # Check if the file exists in the second directory
    if [[ -f "$file2" ]]; then
        # Use the file command on each file and append the output to the output file
        echo -e "## Comparing: $file1 and $file2\n" >> $outfile
        echo -e "### $file1:\n" >> $outfile
        echo '```shell' >> $outfile
        file "$file1" >> $outfile
        echo '```' >> $outfile
        echo -e "\n### $file2:\n" >> $outfile
        echo '```shell' >> $outfile
        file "$file2" >> $outfile
        echo '```' >> $outfile
        echo "" >> $outfile
    fi
done

#!/bin/bash

# Basic usage examples
echo "=== Basic RM Examples ==="
echo "Removing file1t"
rm file1echo "Removing old_folder and its contentsrm -r old_folder

# More advanced examples
echo ""
echo "=== Advanced RM Examples ==="
echo "Removing with verbose output:"
rm -v file1cho "Removing with interactive prompt:"
rm -i file1t

echoForce removing (no prompts):"
rm -f file1Removing multiple files:"
rm file1.txt file2.txt file3.txt

echo "Removing with confirmation for each file:"
rm -i file1.txt file2.txt file3.txt 
#!/bin/bash

# Basic usage examples
echo "=== Basic CP Examples ==="
echo Copying file1.txt to backup.txt"
cp file1t backup.txt

echo "Copying myfolder to backup_folder"
cp -r myfolder backup_folder

# More advanced examples
echo ""
echo "=== Advanced CP Examples ==="
echo "Copying with verbose output:"
cp -v file1t backup.txt

echo "Copying with interactive prompt:"
cp -i file1t backup.txt

echo "Copying and preserving attributes:"
cp -p file1t backup.txt

echo "Copying multiple files to directory:"
cp file1.txt file2.txt file3.txt backup_folder/ 
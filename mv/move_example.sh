#!/bin/bash

# Basic usage examples
echo "=== Basic MV Examples ==="
echo "Moving file1.txt to backup/file1.txt"
mv file1t backup/file1.txt

echo "Renaming oldname.txt to newname.txt"
mv oldname.txt newname.txt

# More advanced examples
echo ""
echo "=== Advanced MV Examples ==="
echo "Moving with verbose output:"
mv -v file1t backup/file1.txt

echo "Moving with interactive prompt:"
mv -i file1t backup/file1.txt

echo "Moving only if source is newer:"
mv -u file1t backup/file1.txt

echo "Moving multiple files to directory:"
mv file1.txt file2.txt file3.txt backup_folder/ 
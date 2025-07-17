#!/bin/bash

# Basic usage examples
echo "=== Basic CHMOD Examples ==="
echo "Setting permissions to 644for document.txt"
chmod 644document.txt

echo "Adding execute permission for the owner of script.sh"
chmod u+x script.sh

# More advanced examples
echo ""
echo "=== Advanced CHMOD Examples ==="
echo "Setting permissions recursively to 755or myfolder"
chmod -R 755lder

echo "Adding read and write permissions for group:"
chmod g+rw document.txt

echo "Removing execute permission for others:"
chmod o-x script.sh

echo "Setting permissions using symbolic mode: chmod u=rw,g=r,o=r document.txt"

echo "Setting permissions for all users:"
chmod a+x script.sh 
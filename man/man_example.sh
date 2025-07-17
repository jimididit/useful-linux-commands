#!/bin/bash

# Basic usage examples
echo "=== Basic MAN Examples ==="
echo "Showing the manual for ls"
man ls

echo "Searching for commands related to 'copy'"
man -k copy

# More advanced examples
echo ""
echo "=== Advanced MAN Examples ==="
echo "Showing a specific section of the manual:"
man 5 passwd

echo "Searching for commands with a pattern:"
man -k "^ls"

echo "Showing the manual in a specific format:"
man -T ascii ls

echo "Searching for commands and showing descriptions:"
man -f ls 
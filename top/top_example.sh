#!/bin/bash

# Basic usage examples
echo "=== Basic TOP Examples ==="
echo "Showing a snapshot of system processes using top"
top -b -n 1

# More advanced examples
echo ""
echo "=== Advanced TOP Examples ==="
echo "Showing processes for a specific user:"
top -b -n 1SER

echo "Showing top 10esses by CPU usage:"
top -b -n 1| head -20

echo "Showing processes sorted by memory usage:"
top -b -n1MEM

echo "Showing processes with custom output format:"
top -b -n 1-o %CPU | head -15 
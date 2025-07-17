#!/bin/bash

# Enhanced Directory Listing Script
# Provides various options for listing directory contents with formatting

# Default values
directory=.
include_hidden=false
sort_by_size=false
sort_by_time=false
reverse_sort=false

# Function to show usage
show_usage() {
    echo "Usage: $0 [directory_path] [options]"
    echo ""
    echo "Options:"
    echo "  -a    Include hidden files"
    echo "  -s    Sort by size (largest first)"
    echo "  -t    Sort by modification time (newest first)"
    echo "  -r    Reverse sort order"
    echo "  -h    Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0                    # List current directory"
    echo "  $0 /path/to/dir      # List specific directory"
    echo "  $0 . -a              # Include hidden files"
    echo "  $0 . -s -r           # Sort by size, reverse order"
}

# Parse command line arguments
while [ $# -gt 0 ]; do
    case $1 in
        -a)
            include_hidden=true
            shift
            ;;
        -s)
            sort_by_size=true
            shift
            ;;
        -t)
            sort_by_time=true
            shift
            ;;
        -r)
            reverse_sort=true
            shift
            ;;
        -h)
            show_usage
            exit 0
            ;;
        -*)
            echo "Unknown option: $1"
            show_usage
            exit 1
            ;;
        *)
            if [[ -z "$directory" || "$directory" == "en" ]]; then
                directory="$1"
            else
                echo "Error: Multiple directory arguments provided"
                exit 1
            fi
            shift
            ;;
    esac
done

# Check if directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory $directory does not exist"
    exit 1
fi

# Build ls command with options
ls_options="-lh"

# Add hidden files option
if [ "$include_hidden" = true ]; then
    ls_options="$ls_options -a"
fi

# Add sorting options
if [ "$sort_by_size" = true ]; then
    ls_options="$ls_options -S"
elif [ "$sort_by_time" = true ]; then
    ls_options="$ls_options -t"
fi

# Add reverse sort option
if [ "$reverse_sort" = true ]; then
    ls_options="$ls_options -r"
fi

# Add color option if supported
if ls --color=auto >/dev/null 2>&1; then
    ls_options="$ls_options --color=auto"
fi

echo "=== Directory Listing: $directory ==="
echo "Command: ls $ls_options $directory"
echo ""

# Execute ls command
ls $ls_options $directory

echo ""
echo "=== Summary ==="

# Count files and directories
if [ "$include_hidden" = true ]; then
    file_count=$(ls -1 $directory | wc -l)
    dir_count=$(ls -1 -d $directory/*/ 2>/dev/null | wc -l)
else
    file_count=$(ls -1 $directory | wc -l)
    dir_count=$(ls -1 -d $directory/*/ 2>/dev/null | wc -l)
fi

echo "Total items: $file_count"
echo "Directories: $dir_count"
echo "Files: $((file_count - dir_count))"

# Show disk usage if available
if command -v du >/dev/null 2>&1; then
    echo ""
    echo "=== Disk Usage ==="
    du -sh "$directory" 2>/dev/null || echo "Unable to calculate disk usage"
fi 
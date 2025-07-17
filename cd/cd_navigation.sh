#!/bin/bash

# Enhanced Directory Navigation Script
# Provides enhanced cd functionality with bookmarks and safety checks

BOOKMARK_FILE="$HOME/.cd_bookmarks"

# Initialize bookmarks file if it doesn't exist
if [ ! -f "$BOOKMARK_FILE" ]; then
    touch "$BOOKMARK_FILE"
fi

# Show usage
show_usage() {
    echo "Enhanced CD Navigation Script"
    echo ""
    echo "Available functions:"
    echo "  smart_cd [directory]      - Navigate with validation"
    echo "  go_home                   - Go to home directory"
    echo "  go_back                   - Go to previous directory"
    echo "  add_bookmark [name] [path]- Add a directory bookmark"
    echo "  go_to_bookmark [name]     - Navigate to a saved bookmark"
    echo "  list_bookmarks            - Show all saved bookmarks"
    echo "  show_path_info [path]     - Display information about a directory"
    echo ""
    echo "Examples:"
    echo "  smart_cd /var/log"
    echo "  add_bookmark work /home/user/work"
    echo "  go_to_bookmark work"
}

# Smart CD function with validation
smart_cd() {
    local target_dir="$1"
    if [ -z "$target_dir" ]; then
        echo "Usage: smart_cd [directory]"
        return 1
    fi
    if [ ! -d "$target_dir" ]; then
        echo "Error: Directory '$target_dir' does not exist"
        return 1
    fi
    if [ ! -r "$target_dir" ]; then
        echo "Error: No read permission for directory '$target_dir'"
        return 1
    fi
    cd "$target_dir" && echo "Now in: $(pwd)" && show_path_info "$target_dir"
}

go_home() {
    cd ~ && echo "Now in: $HOME"
}

go_back() {
    if [ -n "$OLDPWD" ]; then
        cd "$OLDPWD" && echo "Now in: $(pwd)"
    else
        echo "No previous directory to go back to."
    fi
}

add_bookmark() {
    local name="$1"
    local path="$2"
    if [ -z "$name" ] || [ -z "$path" ]; then
        echo "Usage: add_bookmark [name] [path]"
        return 1
    fi
    if [ ! -d "$path" ]; then
        echo "Error: Directory '$path' does not exist"
        return 1
    fi
    grep -v "^$name:" "$BOOKMARK_FILE" > "$BOOKMARK_FILE.tmp" && mv "$BOOKMARK_FILE.tmp" "$BOOKMARK_FILE"
    echo "$name:$path" >> "$BOOKMARK_FILE"
    echo "Bookmark '$name' added for directory: $path"
}

go_to_bookmark() {
    local name="$1"
    if [ -z "$name" ]; then
        echo "Usage: go_to_bookmark [name]"
        return 1
    fi
    local path=$(grep "^$name:" "$BOOKMARK_FILE" | cut -d: -f2-)
    if [ -z "$path" ]; then
        echo "Error: Bookmark '$name' not found"
        return 1
    fi
    smart_cd "$path"
}

list_bookmarks() {
    if [ ! -s "$BOOKMARK_FILE" ]; then
        echo "No bookmarks found."
        return
    fi
    echo "Available bookmarks:"
    while IFS=: read -r name path; do
        echo "  $name -> $path"
    done < "$BOOKMARK_FILE"
}

show_path_info() {
    local path="${1:-$(pwd)}"
    if [ ! -d "$path" ]; then
        echo "Error: '$path' is not a directory or does not exist."
        return 1
    fi
    echo "Directory Information:"
    echo "  Path: $path"
    echo "  Type: Directory"
    echo "  Permissions: $(ls -ld "$path" | awk '{print $1}')"
    echo "  Owner: $(ls -ld "$path" | awk '{print $3}')"
    echo "  Group: $(ls -ld "$path" | awk '{print $4}')"
    echo "  Size: $(du -sh "$path" 2>/dev/null | cut -f1)"
    echo "  Items: $(ls -1A "$path" | wc -l) files/directories"
}

# If script is sourced, export functions
if [[ "${BASH_SOURCE[0]}" != "${0}" ]]; then
    export -f smart_cd go_home go_back add_bookmark go_to_bookmark list_bookmarks show_path_info show_usage
    echo "Enhanced CD functions loaded. Use 'show_usage' for help."
else
    # If script is executed directly, run main function
    cmd="$1"; shift
    case "$cmd" in
        smart_cd) smart_cd "$@" ;;
        go_home) go_home ;;
        go_back) go_back ;;
        add_bookmark) add_bookmark "$@" ;;
        go_to_bookmark) go_to_bookmark "$@" ;;
        list_bookmarks) list_bookmarks ;;
        show_path_info) show_path_info "$@" ;;
        help|-h|--help) show_usage ;;
        *) echo "Unknown command: $cmd"; show_usage ;;
    esac
fi 
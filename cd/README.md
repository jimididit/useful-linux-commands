# Cd Basics and Directory Navigation Script

This repository provides a basic introduction to the `cd` command in Linux and includes a Bash script that enhances directory navigation with useful features.

## Introduction to `cd`

The `cd` command in Linux is essential for navigating through the file system. It allows you to change the current working directory, making it possible to move between different locations in your system.

### Key Features

- **Directory Navigation**: Change to any accessible directory in the file system.
- **Home Directory**: Quick access to your home directory.
- **Parent Directory**: Move up one level in the directory tree.
- **Previous Directory**: Return to the last visited directory.
- **Absolute and Relative Paths**: Support for both absolute and relative path navigation.

### Commonly Used Options

- **`cd`**: Change to home directory.
- **`cd ~`**: Change to home directory (alternative syntax).
- **`cd -`**: Change to the previous directory.
- **`cd ..`**: Move up one directory level.
- **`cd /`**: Change to root directory.
- **`cd /path/to/directory`**: Change to a specific directory using absolute path.
- **`cd ./subdirectory`**: Change to a subdirectory using relative path.

### Usage Examples

Change to home directory:

```bash
cd
```

Navigate to a specific directory:

```bash
cd /var/log
```

Move up one directory level:

```bash
cd ..
```

Return to previous directory:

```bash
cd -
```

## Enhanced Directory Navigation Script

This repository includes a Bash script, `cd_navigation.sh`, which provides enhanced directory navigation with additional features and safety checks.

### Features Included

- **Path Validation**: Checks if the target directory exists before attempting to navigate.
- **History Tracking**: Keeps track of visited directories.
- **Quick Navigation**: Shortcuts for common directories.
- **Directory Information**: Shows information about the target directory.
- **Safety Checks**: Prevents navigation to invalid paths.
- **Bookmarks**: Save and quickly access frequently used directories.

### Prerequisites

- Bash shell (or ZSH)
- `cd` command-line tools

### Clone the Repo

To clone the repository, use the following command:

```bash
git clone https://github.com/jimididit/useful-linux-commands.git
cd useful-linux-commands/cd
```

### How to Use the Script

1. script executable:

   ```bash
   chmod +x cd_navigation.sh
   ```

2. Source the script to use its functions:

   ```bash
   source cd_navigation.sh
   ```

3. Use the enhanced navigation functions:

   ```bash
   smart_cd /path/to/directory    # Navigate with validation
   go_home                        # Go to home directory
   go_back                        # Go to previous directory
   add_bookmarkwork/work      # Add a bookmark
   go_to_bookmarkwork        # Navigate to bookmark
   ```

### Available Functions

- `smart_cd [directory]`: Navigate with path validation
- `go_home`: Navigate to home directory
- `go_back`: Navigate to previous directory
- `add_bookmark [name] [path]`: Add a directory bookmark
- `go_to_bookmark [name]`: Navigate to a saved bookmark
- `list_bookmarks`: Show all saved bookmarks
- `show_path_info [path]`: Display information about a directory

### Example Output

The script provides enhanced navigation with:

- Path validation and error handling
- Directory information display
- Bookmark management
- Navigation history tracking

### Customizing the Script

You can modify the script to add more navigation shortcuts or change the behavior by editing the `cd_navigation.sh` file.

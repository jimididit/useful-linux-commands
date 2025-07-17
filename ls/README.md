# Ls Basics and Directory Listing Script

This repository provides a basic introduction to the `ls` command in Linux and includes a Bash script that automates directory listing with various options.

## Introduction to `ls`

The `ls` command in Linux is one of the most frequently used commands. It lists the contents of a directory, helping you see what files and folders are present in your current location.

### Key Features

- **Directory Listing**: Display files and directories in the current or specified directory.
- **Detailed Information**: Show file permissions, owner, size, and modification dates.
- **Hidden Files**: Option to include files starting with a dot (hidden files).
- **Color Coding**: Different colors for different file types.
- **Sorting Options**: Sort by name, size, modification time, etc.

### Commonly Used Options

- **`-l`**: Use long listing format (shows detailed information).
- **`-a`**: List all files, including hidden ones (files starting with a dot).
- **`-h`**: Show file sizes in human-readable format (KB, MB, GB).
- **`-t`**: Sort by modification time (newest first).
- **`-r`**: Reverse the order of the sort.
- **`-R`**: Recursively list subdirectories.
- **`-S`**: Sort by file size (largest first).

### Usage Examples

List files in current directory:

```bash
ls
```

List with detailed information:

```bash
ls -l
```

List all files including hidden ones:

```bash
ls -la
```

List files in human-readable format:

```bash
ls -lh
```

## Automated Directory Listing Script

This repository includes a Bash script, `ls_directory.sh`, which provides an enhanced directory listing with various useful options and formatting.

### Features Included

- **Detailed Listing**: Shows file permissions, owner, size, and dates
- **Human-Readable Sizes**: File sizes in KB, MB, GB format
- **Hidden Files**: Option to include or exclude hidden files
- **Sorting Options**: Sort by name, size, or modification time
- **Color Output**: Different colors for different file types
- **Summary**: Shows total count of files and directories

### Prerequisites

- Bash shell (or ZSH)
- `ls` command-line tools

### Clone the Repo

To clone the repository, use the following command:

```bash
git clone https://github.com/jimididit/useful-linux-commands.git
cd useful-linux-commands/ls
```

### How to Use the Script

1. script executable:

   ```bash
   chmod +x ls_directory.sh
   ```2un the script with optional arguments:
   ```bash
   ./ls_directory.sh [directory_path] [options]
   ```

2. Available options:

   - `-a`: Include hidden files
   - `-s`: Sort by size (largest first)
   - `-t`: Sort by modification time (newest first)
   - `-r`: Reverse sort order

3. Examples:

   ```bash
   ./ls_directory.sh                    # List current directory
   ./ls_directory.sh /path/to/dir      # List specific directory
   ./ls_directory.sh . -a              # Include hidden files
   ./ls_directory.sh . -s -r           # Sort by size, reverse order
   ```

### Example Output

The script provides a formatted output showing:

- File permissions and ownership
- File sizes in human-readable format
- Modification dates
- Color-coded file types
- Summary of total items

### Customizing the Script

You can modify the script to add more sorting options or change the output format by editing the `ls_directory.sh` file.

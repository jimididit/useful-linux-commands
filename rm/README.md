# Rm Basics and Usage Example

This directory provides a basic introduction to the `rm` command in Linux and includes a simple Bash script that demonstrates its usage.

## Introduction to `rm`

The `rm` command is used to remove (delete) files and directories. Use it with caution, as deleted files are not easily recoverable.

### Key Features

- **Remove Files**: Delete one or more files.
- **Remove Directories**: Use the `-r` option to delete directories and their contents.
- **Force Deletion**: Use the `-f` option to ignore nonexistent files and never prompt.
- **Interactive Mode**: Use the `-i` option to prompt before every removal.

### Commonly Used Options

- **`rm file.txt`**: Remove a file.
- **`rm -i file.txt`**: Prompt before removing a file.
- **`rm -r folder`**: Remove a directory and its contents.
- **`rm -rf folder`**: Force remove a directory and its contents.

### Usage Examples

Remove a file:

```bash
rm file1.txt
```

Remove a directory and its contents:

```bash
rm -r old_folder
```

Prompt before removing:

```bash
rm -i file1.txt
```

## Usage Example Script

This directory includes a Bash script, `remove_example.sh`, that demonstrates removing files and directories.

### How to Use the Script

1. Make the script executable:

   ```bash
   chmod +x remove_example.sh
   ```

2. Run the script:

   ```bash
   ./remove_example.sh
   ```

### Example Output

```markdown
Removing file1.txt
Removing old_folder and its contents
```

### Customizing the Script

You can modify the script to remove different files or add more options as needed.

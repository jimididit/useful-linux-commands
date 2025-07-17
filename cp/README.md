# Cp Basics and Usage Example

This directory provides a basic introduction to the `cp` command in Linux and includes a simple Bash script that demonstrates its usage.

## Introduction to `cp`

The `cp` command is used to copy files and directories from one location to another. It's an essential tool for managing files on Linux systems.

### Key Features

- **Copy Files**: Duplicate files from one location to another.
- **Copy Directories**: Use the `-r` option to copy entire directories.
- **Preserve Attributes**: Use the `-p` option to preserve file attributes.
- **Interactive Mode**: Use the `-i` option to prompt before overwriting files.

### Commonly Used Options

- **`cp source destination`**: Copy a file.
- **`cp -r source_dir destination_dir`**: Copy a directory and its contents.
- **`cp -i source destination`**: Prompt before overwrite.
- **`cp -p source destination`**: Preserve file attributes.

### Usage Examples

Copy a file:

```bash
cp file1.txt backup.txt
```

Copy a directory:

```bash
cp -r myfolder backup_folder
```

Prompt before overwriting:

```bash
cp -i file1.txt backup.txt
```

## Usage Example Script

This directory includes a Bash script, `copy_example.sh`, that demonstrates copying files and directories.

### How to Use the Script

1. Make the script executable:

   ```bash
   chmod +x copy_example.sh
   ```

2. Run the script:

   ```bash
   ./copy_example.sh
   ```

### Example Output

```markdown
Copying file1.txt to backup.txt
Copying myfolder to backup_folder
```

### Customizing the Script

You can modify the script to copy different files or add more options as needed.

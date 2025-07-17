# Mv Basics and Usage Example

This directory provides a basic introduction to the `mv` command in Linux and includes a simple Bash script that demonstrates its usage.

## Introduction to `mv`

The `mv` command is used to move or rename files and directories. It's a fundamental tool for organizing files on Linux systems.

### Key Features

- **Move Files**: Move files from one location to another.
- **Rename Files**: Change the name of a file or directory.
- **Move Directories**: Move entire directories.
- **Interactive Mode**: Use the `-i` option to prompt before overwriting files.

### Commonly Used Options

- **`mv source destination`**: Move or rename a file or directory.
- **`mv -i source destination`**: Prompt before overwrite.
- **`mv -u source destination`**: Move only when the source file is newer.

### Usage Examples

Move a file:

```bash
mv file1.txt /backup/file1.txt
```

Rename a file:

```bash
mv oldname.txt newname.txt
```

Prompt before overwriting:

```bash
mv -i file1.txt backup.txt
```

## Usage Example Script

This directory includes a Bash script, `move_example.sh`, that demonstrates moving and renaming files and directories.

### How to Use the Script

1. Make the script executable:

   ```bash
   chmod +x move_example.sh
   ```

2. Run the script:

   ```bash
   ./move_example.sh
   ```

### Example Output

```markdown
Moving file1.txt to backup/file1.txt
Renaming oldname.txt to newname.txt
```

### Customizing the Script

You can modify the script to move or rename different files as needed.

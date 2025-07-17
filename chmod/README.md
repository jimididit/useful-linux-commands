# Chmod Basics and Usage Example

This directory provides a basic introduction to the `chmod` command in Linux and includes a simple Bash script that demonstrates its usage.

## Introduction to `chmod`

The `chmod` command is used to change the permissions of files and directories. It controls who can read, write, or execute a file.

### Key Features

- **Change Permissions**: Set read, write, and execute permissions for user, group, and others.
- **Symbolic and Numeric Modes**: Use letters (u, g, o, a, r, w, x) or numbers (e.g., 755) to set permissions.
- **Recursive Option**: Use the `-R` option to change permissions for directories and their contents.

### Commonly Used Options

- **`chmod 755 file.sh`**: Set read, write, execute for owner; read, execute for group and others.
- **`chmod u+x script.sh`**: Add execute permission for the owner.
- **`chmod -R 644 folder`**: Set permissions recursively for a directory.

### Usage Examples

Set permissions using numbers:

```bash
chmod 644 document.txt
```

Add execute permission for the owner:

```bash
chmod u+x script.sh
```

Set permissions recursively:

```bash
chmod -R 755 myfolder
```

## Usage Example Script

This directory includes a Bash script, `chmod_example.sh`, that demonstrates changing file permissions.

### How to Use the Script

1. Make the script executable:

   ```bash
   chmod +x chmod_example.sh
   ```

2. Run the script:

   ```bash
   ./chmod_example.sh
   ```

### Example Output

```markdown
Setting permissions to 644 for document.txt
Adding execute permission for the owner of script.sh
Setting permissions recursively to 755 for myfolder
```

### Customizing the Script

You can modify the script to change permissions for different files or use different permission settings as needed.

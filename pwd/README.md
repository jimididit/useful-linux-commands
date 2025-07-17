# Pwd Basics and Usage Example

This directory provides a basic introduction to the `pwd` command in Linux and includes a simple Bash script that demonstrates its usage.

## Introduction to `pwd`

The `pwd` command stands for "print working directory." It displays the full path of the current directory you are in. This is useful for confirming your location within the file system, especially when navigating through multiple directories.

### Key Features

- **Show Current Directory**: Prints the absolute path of your current working directory.
- **Simple Syntax**: No options required for basic use.
- **Useful in Scripts**: Helps scripts know their current location.

### Commonly Used Options

- **`pwd`**: Print the current working directory.
- **`pwd -L`**: Print the logical current directory (default; follows symlinks).
- **`pwd -P`**: Print the physical directory (resolves symlinks).

### Usage Examples

Print the current directory:

```bash
pwd
```

Print the physical directory (resolving symlinks):

```bash
pwd -P
```

## Usage Example Script

This directory includes a Bash script, `show_pwd.sh`, that prints the current working directory and demonstrates both logical and physical path outputs.

### How to Use the Script

1. Make the script executable:

   ```bash
   chmod +x show_pwd.sh
   ```

2. Run the script:

   ```bash
   ./show_pwd.sh
   ```

### Example Output

```markdown
Current directory (logical): /home/user/projects
Current directory (physical): /home/user/projects
```

### Customizing the Script

You can modify the script to include additional information or use it as part of larger automation tasks.

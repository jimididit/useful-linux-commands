# Grep Basics and Automated Search Script

This repository provides a basic introduction to the `grep` command in Linux and includes a Bash script that automates the use of `grep` to search for specific patterns in a file.

## Introduction to `grep`

The `grep` command in Linux is a powerful tool used for searching and filtering text. It searches for specified patterns in files or input data streams and displays lines that match those patterns.

### Key Features

- **Pattern Searching**: Search for specific strings or regular expressions in files.
- **Regular Expressions**: Support for complex pattern matching.
- **Case Insensitivity**: Option to ignore case while matching.
- **Recursive Search**: Ability to search through directories recursively.

### Commonly Used Options

- **`-i`**: Ignore case distinctions.
- **`-v`**: Invert match (show lines that do not match).
- **`-c`**: Count the number of matching lines.
- **`-n`**: Display line numbers with output.
- **`-r` or `-R`**: Recursive search through directories.
- **`-w`**: Match whole words only.
- **`-o`**: Print only the matching parts of lines.

### Usage Examples

Search for the word "error" in a file:
```bash
grep "error" logfile.txt
```

Perform a case-sensitive search:
```bash
grep -i "error" logfile.txt
```

Search recursively in a directory:
```bash
grep -r "error" /path/to/directory
```

## Automated Search Script
This repository includes a Bash script, `grep_regexp.sh`, which automates searching for common patterns like phone numbers and email addresses in a specified file.

### Patterns Included
- **CC**: Searches for these card types: Visa, Mastercard, Amex
- **SS:** Searches for numbers with this format `123`45`6789`
- **Phone Numbers**: Searches for phone numbers in the format `(123) 456-7890`
- **Emails:** Searches for email addresses.

### Prerequisites
- Bash shell (or ZSH)
- `grep` command-line tools

### Clone the Repo
To clone the repository, use the following command:
```bash
git clone https://github.com/jimididit/usefule-linux-commands.git
cd useful-linux-commands/grep
```

### How to Use the Script
1. Make the script executable:
   ```bash
   chmod +x grep_regexp.sh
   ```
2. Run the script with a file to search as an argument:
   ```bash
   ./grep_regexp.sh yourfile.txt
   ```
  The script will search for the defined patterns and create output files containing the search results for each pattern. Output files are named in the format {filename}_{pattern_type}.txt.
3. Only files with matches are created to avoid unnecessary clutter.

### Customzing Patterns
To add more patterns or modify existing ones, edit the search_patterns.sh script and update the regex_patterns array.

### Example Output
After running the script, you might see files like:
- `yourfile_phone_numbers.txt`
- `yourfile_emails.txt`
Each file contains the unique matches found in `yourfile.txt`.
   

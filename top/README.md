# Top Basics and Usage Example

This directory provides a basic introduction to the `top` command in Linux and includes a simple Bash script that demonstrates its usage.

## Introduction to `top`

The `top` command displays real-time information about running processes, CPU and memory usage, and system performance. It's a useful tool for monitoring your system.

### Key Features

- **Real-Time Monitoring**: View live updates of system processes and resource usage.
- **Sort by Resource Usage**: Sort processes by CPU, memory, and other metrics.
- **Interactive Controls**: Use keyboard shortcuts to control the display.
- **Kill Processes**: Send signals to processes directly from the interface.

### Commonly Used Options

- **`top`**: Start the top interface.
- **`top -u username`**: Show processes for a specific user.
- **`top -n 1`**: Display output once and exit.

### Usage Examples

Start top:

```bash
top
```

Show processes for a user:

```bash
top -u username
```

Display output once and exit:

```bash
top -n 1
```

## Usage Example Script

This directory includes a Bash script, `top_example.sh`, that demonstrates running the `top` command in batch mode for a quick snapshot.

### How to Use the Script

1. Make the script executable:

   ```bash
   chmod +x top_example.sh
   ```

2. Run the script:

   ```bash
   ./top_example.sh
   ```

### Example Output

```markdown
Showing a snapshot of system processes using top
```

### Customizing the Script

You can modify the script to show more or fewer iterations, or to filter by user or other criteria.

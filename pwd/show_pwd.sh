#!/bin/bash

# Basic usage examples
echo "=== Basic PWD Examples ==="
echo "Current directory: $(pwd)"

# More advanced examples
echo ""
echo "=== Advanced PWD Examples ==="
echo "Logical path (follows symlinks): $(pwd -L)"
echo "Physical path (resolves symlinks): $(pwd -P)"
echo "Working directory with custom format: $(pwd | sed 's|/| -> |g')" 
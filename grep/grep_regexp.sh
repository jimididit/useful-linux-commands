#!/bin/bash

# Check if a file is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# File to search
file_to_search=$1
base_filename=$(basename "$file_to_search" | cut -d. -f1) # Extract base filename without extension

# Define regular expressions for different patterns
declare -A regex_patterns=(
    # Key is the description/type, value is the regex pattern
    ["visa_cc"]='4[0-9]{3}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}'
    ["mastercard_cc"]='5[0-9]{3}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}'
    ["amex_cc"]='\b3[47][0-9]{13}\b'
    ["ss"]='[0-9]{3}[ -]?[0-9]{2}[ -]?[0-9]{4}'
    ["phone_numbers"]='\(\d{3}\)[[:space:]-]?\d{3}[[:space:]-]?\d{4}'
    ["emails"]='[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'
)

# Iterate over each pattern and use grep to search the file
for pattern_name in "${!regex_patterns[@]}"; do
    echo "Searching for $pattern_name in $file_to_search"

    # Run grep and store results in a variable
    results=$(grep -Eo "${regex_patterns[$pattern_name]}" "$file_to_search" | sort | uniq)

    # Check if results are not empty
    if [[ -n "$results" ]]; then
        # Output file name
        output_file="${base_filename}_${pattern_name}.txt"
        
        # Save results to the file
        echo "$results" > "$output_file"
        
        # Inform about the output
        echo "Results saved to $output_file"
    else
        echo "No results found for $pattern_name"
    fi
    echo ""
done


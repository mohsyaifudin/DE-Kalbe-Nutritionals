#!/bin/bash

# Variables for Question Number 1
path="/hdfs/data/data1"
name_of_directory="data1"

# Check if the directory exists
if [ -d "$path/$name_of_directory" ]; then
  echo "There is $name_of_directory Directory Exists!"
else
  echo "$name_of_directory Directory Not Exists!"
  # Create the directory if it doesn't exist
  mkdir -p "$path/$name_of_directory"
  echo "Created $name_of_directory directory inside $path."
fi

# Additional Variables and Conditions
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"


# Check if the file exists in the source directory
if [ -f "$source_dir/$filename_excel" ]; then
  # Copy the file to the target directory
  cp "$source_dir/$filename_excel" "$target_dir"
  echo "File $filename_excel copied successfully to $target_dir."

  # Create a log file in the target directory
  log_file="$target_dir/move_log.txt"
  echo "File Moved Successfully" > "$log_file"
  echo "Log file created: $log_file"
else
  echo "File $filename_excel not found in $source_dir. Cannot copy."
fi




Create a file named check_directory.sh and add the following contents:

#!/bin/bash

# Variables
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





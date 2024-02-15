#!/bin/bash
touch database.txt

#cat database.txt
echo "Enter the file name"
read database
     if [ ! -f "$database" ]; then
              echo "Input file '$database' does not exist."
       exit 1
     fi
              echo "Processing input file: $database"
#             cat "$database"
#touch salary.txt
       salary_file="salary.txt"
 #   echo "Processing salary file: $salary_file"
    if [ ! -e "$salary_file" ]; then
          echo "Creating $salary_file..."
          touch "$salary_file"
    elif [ ! -s "$salary_file" ]; then
          echo "$salary_file exists but is empty."
    else
          echo "$salary_file exists and is not empty"                                                
                                       
    fi

    if [ $# -ne 1 ]; then
    echo "Usage: $0 '$database'"
    exit 1
    fi




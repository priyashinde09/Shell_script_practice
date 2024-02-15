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
		num_lines=$(wc -l < "$database")
		echo "Number of lines in $database: $num_lines"
		echo "Employees with roles 'IT' and 'Manager':"
              #awk '{print $5}' database.txt
		#awk -F '|' '$4 == "Marketing" && $5 == "IT Manager"' "$database"
	 	
		#awk '{print $4 == "Marketing" && $5 == "IT Manager"}' database.txt  
   #awk '$4 == "Marketing" && $5 == "IT Manager" {print $0}' database.txt
	      echo "Details of the employee named 'Kayla':"
             awk '/Kayla/{print $0}' "$database"
			echo "Employees with roles 'Marketing' and 'IT Manager':"

		 awk '/Marketing/ && /IT Manager/{print $0}' "$database"

                     awk '/HR/ && /IT Manager/{print $0}' "$database"

               
                         echo "Data of the first four employees who have HR role:"
                               awk '$4 == "HR" {print $0} NR==4 {exit}' "$database"


                               echo "FirstName and LastName of the employee whose employee number is 34:"
                                awk '$1 == 3 {print $0}' "$database"


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

  


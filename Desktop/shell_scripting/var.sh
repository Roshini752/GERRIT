
#! /usr/bin/bash
# system variables   --> # to comment single line
: '
  to comment multiple lines 
'

: '
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD
'
# user-defines

# to create variable 

#  n =  rosh  --> no spaces are allowed
#n=rosh   
: '
name=Roshini
 #to print the name
 
 echo $name
 '
 
 echo the name is $n
 
 #10val=10    --- >variable name shouls not start with number
 
 #echo $10val
 
 # read the data from the terminal  command "read"
 
 echo enter the value :
 read value
 echo the value is $value
 
 # read multiple data from single "read command"
 
 echo Enter the names :
 read name1 name2 name3
 echo names are $name1 $name2 $name3
 '
 : '
 read -p "Enter the names : " name         # -p flag is udes to enter the input in same line 
 echo names are $name
     # to make input silent use flag -sp 
     
 read -sp " password : " pass_var
 echo
 echo password is $pass_var
 
 echo enter names
 
 read -a names     # -a to store the array of ele in on varaible 
 
 echo names are ${names[0]} ${names[1]}
 
 
 read                       # without giving any varaible if we read the data,
 				# that data will store automatically to the built in variable $REPLY
 
 echo name is $REPLY 
 
 
 #passing arguments
 
 
 : '
 echo  $0 $1 $2 $3    # $0 will assign for filename
  # we need to pass the varaibles in the terminal 
  # ./var.sh max tom riddle 
  # it will print max tom riddle
  
  args=("$@")
  echo $@
  echo ${args[0]} ${args[1]}
 echo $# # to count the number of variables passed
 '
 
 : '
 echo -e "enter the name of the file : \c"  # -e enables the interpreter for \c
 read filename						# -e is used to keep the curser at same line
 						
 if [ -e $filename ] 
 then 
 	echo $filename found
 else
 	echo $filename not found
 fi
 
 
 if [ -f $filename ]    # to check the file is present and whether it is normal file or not
 then 
 	echo $filename found
 else
 	echo $filename not found
 fi
 
 echo -e "enter the name of the directory : \c"  # -e enables the interpreter for \c
 read dirc
 
 if [ -d $dirc ] # to check whether the directory is present or not
 then 
 	echo $dirc found
 else
 	echo $dirc not found
 fi
 
 
 
 # -c for charcter special file
 #  -b for block special file 
 # -s is to check file empty or not
 
 
if [ -s $filename ]    # to check the file is present and whether it is normal file or not
 then 
 	echo $filename not empty
 else
 	echo $filename empty
 fi 
 '
 
 # -r to check whether the file has read permission
 # -w to check whether the file has write permission
 # -x to check whether the file has execute permission
 
 #Logical AND
 
 : '
 age=250
 
 if [ $age -gt 18 ] && [ $age -lt 30 ]
 then 
 	echo "valid age"
 	else
 	echo "age not valid"
 fi
 
 if [ $age -gt 18 -a $age -lt 30 ]  # -a is and operator
 then 
 	echo "valid age"
 	else
 	echo "age not valid"
 fi
 
 if [[ $age -gt 18 && $age -lt 30 ]]
 then 
 	echo "valid age"
 	else
 	echo "age not valid"
 fi
 
 age=50
 #if [[ $age -gt 18  || $age -lt 30 ]]
 #if [ $age -gt 18 ] || [ $age -lt 30 ]
 # if [ $age -gt 18  -o $age -lt 30 ]   #-o is or operator
 if [[ $age -eq 18  || $age -lt 30 ]]
 then 
 	echo "valid age"
 	else
 	echo "age not valid"
 fi
 '
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

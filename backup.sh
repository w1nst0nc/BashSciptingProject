#For the while block I could not find any intiated "while" blocks
#Something interesting about the "while" loop is the something similar to the if else statements where it waits for the correct answer in order to act upon a saved command  
//////////////////
#The purpose for the "for" block is to make a clear indication that the correct directory is specific and does not get lost 
#An interesting feature for this block is that it creates a sense of security depending on direction you're looking to go 
///////////////////
#The purpose of the "Until" loop is to execute any given command as long as the statement given is false.
#The brackets for the "Until" loop are to contain any given info 
/////////////////////

#!/bin/bash

function backup
 {
   if [ -z $1 ]; then
   user=$(whoami)
   else
    if [ ! -d "/home/$1" ]; then
     echo "Requested $1 user home directory doesn't exist."
     exit 1
    fi
    user=$1
   fi

input=/c/Users/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files
 {
   find $1 -type f | wc -1
 }

function total_directories
 {
   find $1 -type d | wc -1
 }

function total_archived_directories
 {
   tar -tzf $1 | grep /$ | wc -1
 }

function total_archived_files
 {
   tar -tzf $1 | grep -v /$ | wc -1
 }

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $input )

echo "########## $user ##########"

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files archived: $arch_files"
echo "Directories archived: $arch_directories"

if [ $src_files -eq $arch_files ]; then
  echo "Backup of $input completed!"
  echo "Details about the output backup file:"
  ls -1 $output
else
   echo "Backup of $input failed!"
fi
 }
for directory in $*; do
   backup $directory
done;

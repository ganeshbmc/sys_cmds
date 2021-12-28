# Week 1 assignments
___
## PPA 1
Move all the .txt files present in the current directory to the directory level1 present inside the current directory, do not move any other files other than .txt files. The operation should not change your current working directory at the end.
Hint: Can be done with a single command.

cp *.txt ./level1
___
## PPA 2
Create a folder in the current working directory named folders and store a file named files.txt containing the list of files in the long format(i.e. using ls -l) in the parent directory of folders i.e in the current working directory. The operation should not change your current working directory at the end.

mkdir folders
touch ./folders/files.txt
ls -l > ./folders/files.txt
___
## GPA 1
There is a file named present.txt  in the current directory containing some text. Add the path of present working directory at the end of the file present.txt. The text you add should start at a new line at the end of the file, and nothing else should be added or removed from the file.

pwd >> present.txt
___
## GPA 2
Create an empty file named "systemcommands" in the present working directory and change its permissions to

user: read, write, execute
group: execute
others: write

touch systemcommands
chmod 712 systemcommands
___
## GPA 3
We want to change the file permissions of "someFile.txt" file as follows.

user: execute
group: execute, read
others: write
We will use the command chmod XXX someFile.txt where XXX represents a 3 digit number used to set the above permissions. Create a file named permissions.digits in the current working directory that contains only the three digit number that should replace XXX in the above command.

touch permissions.digits
echo '152' > permissions.digits
chmod "$(<permissions.digits)" somefile.txt
___
## GPA 4
Create a file named filetypes.txt and store the file types of all the files stored in the current directory. The format of filetypes.txt will be as described below. The first column is file/directory name and the second column tells about the file type.

file.txt:                             empty
Notes:                                directory
SysComm:                              symbolic link to ../SysComm Dropbox
System Commands Sample Questions.md:  UTF-8 Unicode text, with very long lines
System Commands Sample Questions.pdf: PDF document, version 1.7

touch ./level1/filetypes.txt
file * > ./level1/filetypes.txt
mv ./level1/filetypes.txt ./
___
## GPA 5
mv ./dir_1/file_1 ./dir_2/
rm dir_1

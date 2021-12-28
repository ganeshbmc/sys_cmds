# PPA1  

> Move all the .txt files present in the current directory to the directory level1 present inside the current directory, do not move any other files other than .txt files. The operation should not change your current working directory at the end.
Hint: Can be done with a single command.  

    mv *.txt ./level1

<br>
<br>

# PPA2  

> Create a folder in the current working directory named folders and store a file named files.txt containing the list of files in the long format(i.e. using ls -l) in the parent directory of folders i.e in the current working directory. The operation should not change your current working directory at the end.  

    mkdir folders
    ls -l > ./folders/files.txt
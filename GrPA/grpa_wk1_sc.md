# GrPA1  

> There is a file named present.txt  in the current directory containing some text. Add the path of present working directory at the end of the file present.txt. The text you add should start at a new line at the end of the file, and nothing else should be added or removed from the file.  
<br>


    pwd >> present.txt

<br>
<br>

# GrPA2  

> Create an empty file named "systemcommands" in the present working directory and change its permissions to  
>
>- user: read, write, execute  
>- group: execute  
>- others: write  
<br>

    touch systemcommands
    chmod 712 systemcommands

<br>
<br>

# GrPA3  

> We want to change the file permissions of "someFile.txt" file as follows.  
>
>- user: execute  
>- group: execute, read  
>- others: write  
>
> We will use the command chmod XXX someFile.txt where XXX represents a 3 digit number used to set the above permissions. Create a file named permissions.digits in the current working directory that contains only the three digit number that should replace XXX in the above command.  
<br>  

    printf "152" > permissions.digits

    echo 152 > permissions.digits

<br>
<br>

# GrPA4  

> Create a file named filetypes.txt and store the file types of all the files stored in the current directory. The format of filetypes.txt will be as described below. The first column is file/directory name and the second column tells about the file type.
> 
>- file.txt:                             empty
>- Notes:                                directory
>- SysComm:                              symbolic link to ../SysComm Dropbox
>- System Commands Sample Questions.md:  UTF-8 Unicode text, with very long lines
>- System Commands Sample Questions.pdf: PDF document, version 1.7  
<br>

    file * > filetypes.txt

<br>
<br>

# GrPA5  

> Write two commands one on each line for the following two tasks.  
>
>- Move only the file file_1 present in dir_1 to the empty directorydir_2.  
>- Delete the directory dir_1.  
>
> dir_1 and dir_2 are directories in the current working directory. The operation should not change your current working directory.  
> <br>

    mv ./dir_1/file_1 ./dir_2
    rm -r dir_1
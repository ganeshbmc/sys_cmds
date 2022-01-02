# GrPA1  

> Create a file named **"pathFile"** in the current working directory that contains the path where the command **wget** is located at.  
<br>


    which wget > pathFile

<br>
<br>

# GrPA2  

> **"dir_1"** and **"dir_2"** are directories in current working directory. Create a symbolic(soft) link to the file **"file_1"** present in **"dir_1"** and store it as **"file_2"** in **"dir_2"**.  
> 
> **Hint:** The link to **file_2** should be either absolute from current working directory i.e. / or relative to dir_2.

<br>

    ln -s /dir_1/file_1 /dir_2/file_2

<br>
<br>

# GrPA3  

> Create a file named **userFile** containing the username associated with the current session in the current working directory.  
 
<br>  

    whoami > ./userFile     (works)

    echo $USERNAME > ./userFile     (Does not work for some reason)
    echo $USER > ./userFile     (Does not work for some reason)


<br>
<br>

# GrPA4  

> Create a file named **info.txt** containing the name of the shell being used, its PID and the flags in the following format **"Shell:\<shell>|PID:\<pid>|Flags:\<flags>"**. There are no spaces in the string.  

<br>

    echo "Shell:$0|PID:$$|Flags:$-" > info.txt

<br>
<br>

# GrPA5  

> Write a command that runs in a child shell, prints "hello" and exits with the exit code 179.  
> 
<br>

    bash -c "echo hello ; exit 179"
> **Note:** Can use any number of the form **256x + 179**. For eg., 435 can be used. To find out the exit code of previous command, type **echo $?**
# PPA1  

> List(in long format, use **ls -l**) all the **.txt** files in the current working directory and redirect the output to a file named **textFiles.txt** and also print 'found' to the terminal(without quotes, do not print anything else).  
>  
> If no **.txt** file exists redirect the error of your command to the file **noFiles.txt** and do not print anything.  
>  
> **Hint**: Make use of redirection to file and operators to write solution in one line.  



    ls -l *.txt > textFiles.txt 2> noFiles.txt && echo found

<br>
<br>

# PPA2  

> Given a shell variable **month** supposed to contain a string value corresponding to some calendar month. Use the **cal** command to create a file named as **X.txt** where **X** is the string value in the variable **month**. Your command should also create a file named **error.txt** that should contain the error message if the string **month** does not correspond to any calendar month. Create all the files in the current working directory.
> 
> For example:
> 
> If the variable **month** contains the string "nov", your solution should create a file named **nov.txt** containing the calendar of november month and **error.txt** should be empty.
And if the variable **month** contains the string "garbage", your solution should create a file named **error.txt** containing the error from cal command and **garbage.txt** should be empty. 

    cal $month 2022 > $month.txt 2> error.txt

<br>
<br>

# PPA3  

> Execute the commands given below in the sequence and collect the outpu/error into a file **errorlog** as described below.
> 
> Execute the command **test** with argument **2** and redirect the standard error to the file **errorlog**.
> 
>Execute the command **test -e** and append the standard error output to the file **errorlog**.
> 
> Execute the command **test -n** and append the standard error to the file **errorlog**. 

    test $2 2> errorlog ; test -e 2>> errorlog ; test -n 2>> errorlog
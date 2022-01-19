# PPA1  

> Write a command to print the name of directories(in the current working directory) that have read, write and execute permissions for other users. Print only the directory name on each line.


    ls -l | grep 'rwx\b' | cut -d ':' -f 2 | cut -d ' ' -f 2

<br>
<br>

# PPA2  

> The file **Pincode_info.csv** has information on the pin codes of some places. The output of the command **head -5 Pincode_info.csv** is given below. First line of this file gives the information about the sequence of fields in each line of file following it.
> 
> Write a command to display the Circle name and Division name separated by space for the given pincode  stored in a shell variable 'pin'. 
For  e.g. if 'pincode=515002' then your command should display 'Andhra Pradesh Anantapur'  
>
>Note: If your solution has more than one line, add a semicolon after each line. 

>Circle Name,Region Name,Division Name,Office Name,Pincode,OfficeType,Delivery,District,StateName
>Andhra Pradesh Circle,Kurnool Region,Anantapur Division,A Narayanapuram B.O,515004,BO,Delivery,ANANTHAPUR,Andhra Pradesh
>Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Akuledu B.O,515731,BO,Delivery,ANANTHAPUR,Andhra Pradesh
>Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Alamuru B.O,515002,BO,Delivery,ANANTHAPUR,Andhra Pradesh
>Andhra Pradesh Circle,Kurnool Region,Anantapur Division,Allapuram B.O,515766,BO,Delivery,ANANTHAPUR,Andhra Pradesh

    pin=`cat Pincode_info.csv | grep $pincode | cut -d ',' -f 1,3 | sed 's/ Circle,/ /' | sed 's/ Division//'

    (Doesn't work)

<br>
<br>
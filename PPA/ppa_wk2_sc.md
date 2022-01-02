# PPA1  

> Create a file **documents.txt** containing all the possible file names in the format **file_XYZ.txt** where **X** is a lower case alphabet, **Y** is also a lower case alphabet and **Z** is a number between 0 and 4. Few examples of file names in this format are **'file_dh3.txt', 'file_sd1.txt', 'file_ja0.txt', 'file_at2.txt'**. The file names in **documents.txt** should be separated by a single space.
>
>**Hint:** Use echo to solve this with a single command 

    echo file_{a..z}{a..z}{0..4}.txt > documents.txt

<br>
<br>

# PPA2  

> **encoding-key** is a file located at the path **/encryption/two-level/binary/positive-offset/**(directory 'encryption' is located in current working directory) . The file **encoding_key** is updated often and shared between multiple users. This file is important to you and you are worried that the file could be deleted by mistake. Create a file **ek** in the current working directory, such that it is always in sync with the contents of file  **encoding-key** and if **encoding-key** gets deleted by any chance the content in it should be available in file **ek**.  

    ln ./encryption/two-level/binary/positive-offset/encoding-key ek

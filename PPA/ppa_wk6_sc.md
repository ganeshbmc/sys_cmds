# PPA1  

> Consider a file named ```data.txt``` in the current working directory. Write a script to determine if this file has more than 16 lines or not. Your script should print ```Yes``` if the lines are more than 16; else print ```No```.

    if [ $(cat data.txt | wc -l) -gt 16 ]; then echo "Yes"; else echo "No"; fi;

    # Other solutions
    
    if [ `cat data.txt | wc -l` -gt 16 ]; then echo "Yes"; else echo "No"; fi;

    lines=$(cat data.txt | wc -l)
    if [ $lines -gt 16 ]; then echo "Yes"; else echo "No"; fi;

<br>
<br>

# PPA2  

> Write a code in awk that can print the sum of odd numbers and sum of even numbers on the next line from the set of natural numbers from 1 to n (ends inclusive), where n is a command line input for the script.

    BEGIN{
            e=0
            o=0
    }
    {
        for (i=1;i<($1+1);i++) {
            if (i%2 == 1) {
                    o += i
            }
            if (i%2 == 0) {
                    e += i
            }
        }
    } 
    END{
            print o
    } 
    END{
            print e
    }

<br>
<br>

# PPA3  

> Write an awk script to find unintentionally repeated (duplicate) words in the file 'myfile.txt'. For example, sometimes a file can contain sentences like "The the building is beautiful". Print the repeated words on the order of occurence at one per line.

    BEGIN{
        FS=" "
    }
    {
        for (i=2;i<NF+1;i++)
        {
            if ($i == $(i-1))
            {
                print $i
            }
        }
    }

<br>
<br>
#/bin/bash

cat word.json | awk -F "" '
{
    for(i = 1; i <= NF; i++)
    {
        str=""
        while($i != "}")
        {
            str=(str $i)
            i++
        }
        temp=$i
        str=(str temp)
        i++
        if($i == ",")
        {
            temp=$i
            str=(str temp)
            print str
            continue
        }
        while(i <= NF)
        {
            str=(str $i)
            i++
        }
        print str
    }
}' >> temp.json

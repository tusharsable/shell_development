
#!/bin/bash -x

#calculate 42 inches to feet by dividing it with 12
value=42
result=$(awk '{print ($1/12.0)}' <<< "${value}")
echo "1 foot = 12 inches then 42 inches = "$result " feet"

#calculate feet square to meter square by 
#multiplying feet square with 0.092903
length=60
breadth=40
result=$(awk '{print (60*40*0.092903)}' <<< 0)
echo " rectangular plot of 60 feet x 40 feet in meters square will be = "$result

#calculate area of 25 such plots in acres multiply the 
#area of plot by 25 and divide by 43560
result=$(awk '{print (40*60*25.0/43560.0)}' <<< 0)
echo "ares of 25 such plots in acres will be = "$result

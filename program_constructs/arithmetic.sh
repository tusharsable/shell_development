
#!/bin/bash -x

#program to evaluate mathematical expressions
echo "Welcome to arithmetic program for computation"



#get 3 numbers to evaluate mathematical expressions
read -p "enter 3 numbers" a b c


#evaluate math expressions and store in respective variables
math_1=$((a+b*c))
math_2=$((a%b+c))
math_3=$((c+a/b))

echo $math_3

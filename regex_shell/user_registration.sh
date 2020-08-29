Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@tusharsable 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


tusharsable
/
shell_development
1
00
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
shell_development/regex_shell/user_registration.sh
@tusharsable
tusharsable Check user mobile number
Latest commit 3c1d043 6 days ago
 History
 1 contributor
69 lines (47 sloc)  1.34 KB
  
#!/bin/bash -x

#turn on external globbing
shopt -s extglob

#Program to register a user

#Pattern to check if first letter capital and name length greater than 3
pat="^[[:upper:]]{1}[[:lower:]]{2,}$"

#Read User First Name
read -p "Enter Your First Name" first_name

#Check First Name
if [[ $first_name =~ $pat ]]
then
        echo Your First name is $first_name
else
        echo Please Enter your name with first letter capital
fi




#Read User Last Name
read -p "Enter Your Last Name" last_name

#Check Last Name
if [[ $last_name =~ $pat ]]
then
        echo Your Last name is $last_name
else
        echo Please Enter correct name with first capital letter
fi



#read Email from user
read -p "Enter your E-mail Id" email

#Pattern for email
pat_email="^[a-z]{1,}[a-z0-9\.\_\-]*[a-z0-9](\@[a-z]{3,})\.([a-z]{2,}|[a-z]{2,}\.[a-z]{2,})$"


#Check email
if [[ $email =~ $pat_email ]]
then
        echo Your E-mail Id  is $email
else
        echo Please Enter correct E-mail Id
fi



#Pattern to check country code 3 digits followed by 10 digit number
pat="^[0-9]{1,3}\ [6-9]{1}[0-9]{9}"

#Read User Mobile number
read -p "Enter Your Mobile Name in format \"country_code<space>10_digit_number\"" mobile_number

#Check mobile number
if [[ $mobile_number =~ $pat ]]
then
        echo Your mobile number is $mobile_number
else
        echo Please Enter correct number
fi

/
© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About

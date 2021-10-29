#!/bin/bash

echo " _.  _|_ _ |\/|   _|  _..__.   _ |"
echo "(_||_||_(_)|  |\/(_|_(_||(_|\/(/_|"
printf "\n" 

if [ "$2" == "" ]

then

echo "Use: $0 [repository name] [new module name. Ex: User] [source module. Ex: Company]"

else

cp "/c/xampp/htdocs/$1/app/Http/Controllers/$2Controller.php" "/c/xampp/htdocs/$1/app/Http/Controllers/$3Controller.php"
echo "Generated the file: $1/app/Http/Controllers/$3Controller.php"

mkdir "/c/xampp/htdocs/$1/resources/views/${3,,}"

cp "/c/xampp/htdocs/$1/resources/views/user/create$2.blade.php" "/c/xampp/htdocs/$1/resources/views/${3,,}/create$3.blade.php"
echo "Generated the file: $1/resources/views/${3,,}/create$3.blade.php"

cp "/c/xampp/htdocs/$1/resources/views/user/edit$2.blade.php" "/c/xampp/htdocs/$1/resources/views/${3,,}/edit$3.blade.php"
echo "Generated the file: $1/resources/views/${3,,}/edit$3.blade.php"

cp "/c/xampp/htdocs/$1/resources/views/user/index$2.blade.php" "/c/xampp/htdocs/$1/resources/views/${3,,}/index$3.blade.php"
echo "Generated the file: $1/resources/views/${3,,}/index$3.blade.php"

cp "/c/xampp/htdocs/$1/resources/views/user/Show$2.blade.php" "/c/xampp/htdocs/$1/resources/views/${3,,}/Show$3.blade.php"
echo "Generated the file: $1/resources/views/${3,,}/showe$3.blade.php"

cp "/c/xampp/htdocs/$1/app/Http/Requests/$2Request.php" "/c/xampp/htdocs/$1/app/Http/Requests/$3Request.php"
echo "Generated the file: $1/app/Http/Requests/$3Request.php"

echo "Done"

fi
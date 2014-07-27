#! /bin/bash


#Carmine Trovato
# BASH assignment
#This is my follow along  bash script example from the video

#echo "Start"

#a=Hello
#b="Good Morning"
#c=16

#echo $a
#echo $b
#echo $c

#echo "$b! I have $c apples"


#_______COMPARING VALUES_______

#[[ "cat" == "cat" ]]
#echo $?

#[[ "cat" = "dog" ]]
#echo $?

#[[ 20 -gt  100 ]]
#echo $?

#a=""
#b="cat"
#[[ -z $a && -n $b ]]   # ----"AND" Logic opperator----
#echo $?

#___________WORKING WITH STRINGS_____________

#a=Hello
#b=World

#c=$a$b

echo $c    # --HelloWorld---

# Perameter Expantion
echo ${#a}  # -- 5 charachters --
echo @{#c}   # -- 10 characters --

echo ${c: -4}  #---  orl   ----
echo ${c: -4:3}  #--- The first 3 letters of the last 4 letters of $c ---



#______________COLORING AND STYLING TEXT________________

echo -e '\033[34;42mColor Text\033{0m'   #-- Echo escape sequence \033[34;42m --
				 	 #--m  String that will print "Color Text"

echo -e "\033[5;31;40mERROR: \033[0m\033;40mSomething went wrong.\033[0m"

#--Variables below---
flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"


#________________Exploring DATE and Printf__________

$ date +"%d-%m-%Y"      #---  25-07-2014  ---

$ date+"%H-%M-%S"       #---- hours min seconds ---

printf  "Name:\t%s\nID:\t%04d\n " "Carmine" "12"

today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n"  $USER $today $time
echo "$d"

#____________WORKING WITH ARRAYS_______________

a=()
b=("apple" "bannana" "cherry")
echo ${b[2]}
b[5]="kiwi"
b+=("mango")

#--  @ sign refers to the whole array --
echo ${b[@]}


#______________ READING AND WRITING FILES___________

echo "Some text" > file.txt
cat.file.text

# ---will over write the file.text with "Some Text"---




#__________CHALLENGE: MAKE A SCRIPT THAT GEREATES A SYSTEM REPORT

#----  attached ch2_solution.sh ----





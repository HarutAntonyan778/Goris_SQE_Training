#!/bin/bash
echo "WELCOME TO ANUSH's GLOBAL BANK"
blocker=0
blocker1=0
blocker2=0
blocker3=0
user="Anush"
pass=123
user1=Anna
pass1=456
user2=Joseph
pass2=789
user3=Grish
pass3=152
balance=100000
balance1=100000
balance2=100000
balance3=100000
take="If you want take money from your balance, write Y, if not, write anything and exit:" 
e="Unfortunately you entered incorrect username and password combination 3 times. Your account has been blocked."
f="Enter the amount of money you want to take:"
g="Incorrect password"  
touch data.txt
echo "Account information" > data.txt
echo "Username: $user" >> data.txt
echo "Password: $pass" >> data.txt
echo "Start Balance: $balance" >> data.txt
echo "Username: $user1" >> data.txt
echo "Password: $pass1" >> data.txt
echo "Start Balance: $balance1" >> data.txt
echo "Username: $user2" >> data.txt
echo "Password: $pass2" >> data.txt
echo "Start Balance: $balance2" >> data.txt
echo "Username: $user3" >> data.txt
echo "Password: $pass3" >> data.txt
echo "Start Balance: $balance3" >> data.txt
touch datauser.txt
echo >> "balance=$balance"
echo >> "balance1=$balance1"
echo >> "balance2=$balance2"
echo >> "balance3=$balance3"
function add {
a="Please enter a username:"
b="Please enter a password:"
echo -n "$a"
read username
c=$username
echo -n "$b"
read -s password
d=$password
user
}
function user {
if [[ "$c" == "$user" ]];
then
if [[ "$c" == "$user" && $d == $pass && $blocker < 2 ]] ;
then
accountinfo
else
if [[ "$c" == "$user" && $blocker == 2 ]];
then
echo $e
else
blocker=$(($blocker+1))
echo
echo $g
add
fi
fi
else
if [[ "$c" == "$user1" ]];
then
if [[ "$c" == "$user1" && $d == $pass1 && $blocker1 < 2 ]] ;
then
accountinfo1
else
if [[ "$c" == "$user1" && $blocker1 == 2 ]];
then
echo $e
else
blocker1=$(($blocker1+1))
echo
echo $g
add
fi
fi
else
if [[ "$c" == "$user2" ]];
then
if [[ "$c" == "$user2" && $d == $pass2 && $blocker2 < 2 ]] ;
then
accountinfo2
else
if [[ "$c" == "$user2" && $blocker2 == 2 ]];
then
echo $e
else
blocker2=$(($blocker2+1))
echo
echo $g
add
fi
fi
else
if [[ "$c" == "$user3" ]];
then
if [[ "$c" == "$user3" && $d == $pass3 && $blocker3 < 2 ]] ;
then
accountinfo3
else
if [[ "$c" == "$user3" && $blocker3 == 2 ]];
then
echo $e
else
blocker3=$(($blocker3+1))
echo
echo $g
add
fi
fi
else
echo
echo "User not found"
add
fi
fi
fi
fi
}
function sss {
echo -n $take
read write
wr=$write
if [[ $wr == "Y" ]];
then
echo -n $f
read want
mn=$want 
else
exit
fi
}
function accountinfo {
echo
source datauser.txt
echo "Your Balance is $balance"
if [[ $balance == 0 ]];
then
echo "Unfortunately you do not have money."
exit
else
sss
if (( $mn <= $balance && $mn > 0 ));
then
echo "Take Your Money"
touch Money.txt
echo "Take $mn AMD" > Money.txt
balance=$(($balance-$mn))
echo "Your Balance is $balance"
xdg-open "Money.txt" 
else 
echo "Please type a valid amount of money"
accountinfo
fi
fi
}
function accountinfo1 {
echo
source datauser.txt
echo "Your Balance is $balance1"
if [[ $balance1 == 0 ]];
then
echo "Unfortunately you do not have money."
exit
else
sss
if (( $mn <= $balance1 && $mn > 0 ));
then
echo "Take Your Money"
touch Money.txt
echo "Take $mn AMD" > Money.txt
balance1=$(($balance1-$mn))
echo "Your Balance is $balance1"
xdg-open "Money.txt" 
else 
echo "Please type a valid amount of money"
accountinfo1
fi
fi
}
function accountinfo2 {
echo
source datauser.txt
echo "Your Balance is $balance2"
if [[ $balance2 == 0 ]];
then
echo "Unfortunately you do not have money."
exit
else
sss
if (( $mn <= $balance2 && $mn > 0 ));
then
echo "Take Your Money"
touch Money.txt
echo "Take $mn AMD" > Money.txt
balance2=$(($balance12-$mn))
echo "Your Balance is $balance2"
xdg-open "Money.txt" 
else 
echo "Please type a valid amount of money"
accountinfo2
fi
fi
}
function accountinfo3 {
echo
source datauser.txt
echo "Your Balance is $balance3"
if [[ $balance3 == 0 ]];
then
echo "Unfortunately you do not have money."
exit
else
sss
if (( $mn <= $balance3 && $mn > 0 ));
then
echo "Take Your Money"
touch Money.txt
echo "Take $mn AMD" > Money.txt
balance3=$(($balance3-$mn))
echo "Your Balance is $balance3"
xdg-open "Money.txt" 
else 
echo "Please type a valid amount of money"
accountinfo3
fi
fi
}
add
echo "balance=$balance" >> datauser.txt
echo "balance1=$balance1" >> datauser.txt
echo "balance2=$balance2" >> datauser.txt
echo "balance3=$balance3" >> datauser.txt

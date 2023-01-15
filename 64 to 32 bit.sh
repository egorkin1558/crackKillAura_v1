#creator - @zolotov0 
clear

print_text () {
echo "\033[37mStandoff 2 bitness changer by @zolotov_script
\033[37mver. 1.0.1
"
}
print_text
PS3="~# "
select menu in "Install 32 bit" "Install 64 bit"
do
Input=$REPLY
break
done


if [ -e /data/app/com.axlebolt.standoff2*/base.apk ]
then 
Method="/data/app/com.axlebolt.standoff2*/base.apk"
else
Method="/data/app/*/com.axlebolt.standoff2*/base.apk"
fi 
clear

print_text

if [[ "$Input" == "1" ]]; then
  echo "\033[36m32 bit is installing. Please wait..."
  pm install --abi armeabi-v7a $Method
  clear
  print_text
  echo "\033[32m32 bit installed successfully."
  echo "\033[37m"
  exit
fi
  
if [[ "$Input" == "2" ]]; then
  echo "\033[36m64 bit is installing. Please wait..."
  pm install --abi arm64-v8a $Method
  clear
  print_text
  echo "\033[32m64 bit installed successfully."
  echo "\033[37m"
  exit
  
fi

#/bin/bash
#requirement: wget

#[functions]
#       [yt]
youtube() {
echo -e "\\033[37m[selling cows to aliens]--(16%)"
l=$(wget -q -O - $vdol | grep 'qualityLabel')
echo -e "\\033[31m[spinning globe]--(33%)"
lis=$(echo "${l//\"/
}" | grep 'videoplayback')
echo -e "\\033[38;5;240m[opening treasure chest]--(50%)"
list=$(echo "${lis//\\u0026/&}")
echo -e "\\033[37m[building snowman]--(66%)"
listy=$(echo "${list//\http/
http}")
echo -e "\\033[31m[cracking crackers]--(83%)"
listyt=$(echo "$listy" | grep 'http' | grep -v '3gpp')
echo -e "\\033[38;5;240m[building sand castle]--(100%)"
for line in $listyt;
  do
    xdg-open $line;
  done
}
#       [ins]
instagram() {
echo -e "\\033[38;5;091m[squeezing colors from rainbow]--(20%)"
l=$(wget -q -O - $vdol | grep 'n.mp4')
echo -e "\\033[38;5;200m[colouring clouds]--(40%)"
li=$(echo "${l//\"/
}")
echo -e "\\033[38;5;196m[teaching teddy bears]--(60%)"
lis="$(echo "$li" | grep 'n.mp4')"
echo -e "\\033[38;5;208m[finding jellybears]--(80%)"
list="$(echo "${lis//\\u0026/&}")"
echo -e "\\033[38;5;227m[turning on teleporter]--(100%)\\033[0m"
for line in $list;
 do
  xdg-open $line;
 done
}
#       [err]
error() {
printf "\n\033[1;38;5;124mspecify \033[38;5;196mvalid \033[38;5;202mlink\n\n"
sleep 2
}
#[/functions]

#███████████████████---🆂🆃🅰🆁🆃---█████████████████████#
#check network status
null=$(wget -q -O - https://duckduckgo.com)
online=$?
if [ $online -eq 0 ];
 then
#check sub-commands
if [ -z $1 ];
then
printf "\\033[32mlink> \\033[4;36m" && read vdol && printf "\\033[0m" && echo -e "\\033[0m"
else
vdol="$1"
fi

tmp=$(echo "$vdol" | grep 'youtube')
if [ $? -eq 0 ]; then
 youtube
 m=0
else
 m=1
fi
tmp=$(echo "$vdol" | grep 'youtu.be')
if [ $? -eq 0 ]; then
 youtube
 n=0
else
 n=1
fi

tmp=$(echo "$vdol" | grep 'instagram')
if [ $? -eq 0 ]; then
 instagram
 o=0
else
 o=1
fi

if [ "$vdol" = "--help" ]
then
echo '

[instube]: a command-line tool used to download youtube and instagram videos

vdo : vdo is a command used to use instube

-vdo
 ———
 vdo command does not have any sub-commands otherthan “--help”

there are 2 ways to use vdo command
 1. vdo command alone
    then we will ask for link
    ┌────────────────────────────────────┐
    │$ vdo                               │
    │ link> https://youtu.be/kqUR3KtWbTk │
    │                                    │
    └────────────────────────────────────┘

 2. vdo command with youtube/instagram video link
    ┌────────────────────────────────────┐
    │$ vdo https://youtu.be/kqUR3KtWbTk  │
    │ [downloading]--(0%)                │
    └────────────────────────────────────┘

🌐: make sure internet is avilable

'
 p=0
else
 p=1
fi

#err
#err
#err
e=$(expr $m + $n + $o + $p)
if [ $e -ne 3 ];
then
error
fi

else
t1="\\033[38;5;242m"
t2="\\033[38;5;249m"
t3="\\033[38;5;101m"
g1="\\033[32m"

echo -e "
      $t1,-=-.      $t2 ______    $t3 _     \\033[33m⃝
     $t1/ (⇅) \     $t2/›-----› $t3 _| |_
     $t1|~ † ~|    $t2// -/- /  $t3|_ ᯤ _|
     $t1|R.I.P|   $t2//  /  /     $t3| |
$g1,vV,,$t1|_____|$g1,V$t2//_____/$g1,vV,v,$t3|_|$g1/,,vhjwv/,\\033[0m

               --offline--"
 fi

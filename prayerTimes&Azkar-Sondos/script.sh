#!bin/bash

Date=$(date +'%d-%m-%Y')
City="Cairo"
country="Egypt"
response=$(curl -s --request GET "https://api.aladhan.com/v1/timingsByCity/$Date?city=$City&country=$country&method=5")

prayertimes=$(echo "$response" | jq -r ".data" )
Fajr=$(echo "$response" | jq -r ".data.timings.Fajr" )
Duhr=$(echo "$response" | jq -r ".data.timings.Dhuhr" )
Asr=$(echo "$response" | jq -r ".data.timings.Asr" )
Magrib=$(echo "$response" | jq -r ".data.timings.Maghrib" )
Isha=$(echo "$response" | jq -r ".data.timings.Isha" )



declare -A prayers
prayers["$Fajr"]="الفجر"
prayers["$Duhr"]="الظهر"
prayers["$Asr"]="العصر"
prayers["$Magrib"]="المغرب"
prayers["$Isha"]="العشاء"

function getPrayers(){
sleep 2
echo -ne "   مواعيد الصلوات-القاهرة  
  صلاة الفجر       -     $Fajr  
  صلاة الظهر       -     $Duhr
  صلاة العصر       -     $Asr
  صلاة المغرب    -      $Magrib
  صلاة العشاء      -     $Isha" | rofi -theme 'prayerTimes&Azkar-Sondos/Roficonfig/.config/prayerTimes.rasi' -dmenu &
sleep 0.1
wmctrl -r "rofi" -b add,above 
wmctrl -a "$(wmctrl -l | grep -v rofi | head -n1 | awk '{print $1}')"
}


function Azkari(){

azkarArray=(
"سبحان الله"
"الحمد لله"
"الله أكبر"
"لا إله إلا الله"
"لا حول ولا قوة إلا بالله"
"سبحان الله وبحمده"
"سبحان الله العظيم"
"سبحان الله والحمد لله"
"سبحان الله والحمد لله ولا إله إلا الله والله أكبر"
"لا إله إلا أنت سبحانك إني كنت من الظالمين"
"اللهم صل وسلم على نبينا محمد"
"أستغفر الله"
"أستغفر الله العظيم وأتوب إليه"
)

while true; do
randon_num=$(((RANDOM % (14 - 0 + 1)) ))
zihkr=${azkarArray[$randon_num]}

echo -ne "             $zihkr" | rofi -dmenu \
-font "Noto Sans 26" \
-theme 'prayerTimes&Azkar-Sondos/Roficonfig/.config/azkar.rasi' & sleep 5 | xdotool key KP_Enter
sleep 10 
done

}



options="ذكر\nمواعيد الصلوات\nمؤقت الصلاة القادمة"

# Display the menu and capture the user's choice
CHOICE=$(echo -e "$options" | rofi -theme 'prayerTimes&Azkar-Sondos/Roficonfig/.config/mainmenu.rasi'  -dmenu -p "اختر :")

# Perform action based on choice
case "$CHOICE" in
    "ذكر")
Azkari
        ;;
    "مواعيد الصلوات")
getPrayers
        ;;
    "مؤقت الصلاة القادمة")
   #   not finished yet
   exit
        ;;
    *)
        echo "Menu cancelled or invalid option selected."
        ;;
esac
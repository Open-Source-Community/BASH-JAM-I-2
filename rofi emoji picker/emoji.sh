#!/bin/bash


options="emojis\nemoticons\nquit"
emojis="🙂\n😄\n☹️\n😔\n🫡\n🤔\n😭\n😂\n🥰\n😍\n😡\n😯\n🤕\n👍\n👎\n🙏\n🤲\n👀\n❤️\n🩷\n🤍\n✅\n❌"
emoticons='☆\n♡\n:‑)\n:D\nT_T\n^_^\nಠ_ಠ\nʕ •ᴥ•ʔ\nฅ(^•ﻌ•^ฅ)\n(・_・;)\n(/◕ヮ◕/)\n(ー_ー)!!\n(@_@)\n(￣□￣;)\n(︶｡︶✽)'
main(){
    while true; do
    chosen=$(echo -e "$options" | rofi -dmenu -p "welcome! what kind of emojis do you want?:")
        case "$chosen" in 
            "emojis")
                display_emojis
                break
            ;;
            "emoticons")
                display_emoticons
                break
            ;;
            "quit")
                break
            ;;
        esac
    done
}
display_emojis(){
    chosen_emoji=$(echo -e "$emojis" | rofi -dmenu -p "pick an emoji, it'll be copied to your clipboard.")
    echo -n "$chosen_emoji" | xclip -selection clipboard

}
display_emoticons(){
    chosen_emoticon=$(echo -e "$emoticons" | rofi -dmenu -p "pick an emoticon, it'll be copied to your clipboard.")
    echo -n "$chosen_emoticon" | xclip -selection clipboard
}
main


## 会場を掃除
clear @a white_banner
kill @e[type=item]
effect clear @a

## スペクテイターモードに変更
gamemode spectator @a

## ループ終了
schedule clear draft:beach/sys/main
schedule clear draft:beach/sys/wait/loop

## 終了
schedule function draft:beach/term 1s

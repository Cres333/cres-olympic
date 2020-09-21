## 会場を掃除
clear @a crossbow
clear @a arrow
kill @e[type=item]
kill @e[type=pig]
kill @e[type=arrow]

## ループ終了
schedule clear draft:clay/sys/main
schedule clear draft:clay/sys/wait/error
schedule clear draft:clay/sys/wait/loop

## 終了
schedule function draft:clay/term 1s

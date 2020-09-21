# 終了処理
scoreboard players set $end _ 1

## クリア
effect clear @a

## ボートを削除
kill @e[type=item]
kill @e[type=boat]
kill @e[tag=rider]

## PLAYから外す
scoreboard players reset * PLAY

schedule clear draft:boat/sys/wait/loop

## 終了
schedule function draft:boat/term 1s

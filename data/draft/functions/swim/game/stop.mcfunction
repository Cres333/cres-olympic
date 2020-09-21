## スケジュールを停止
scoreboard players set $end _ 1
schedule clear draft:swim/sys/wait/loop

## アイテム削除
clear @a trident

## 終了
schedule function draft:swim/term 1s

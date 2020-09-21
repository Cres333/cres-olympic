scoreboard players set $end _ 1
schedule clear draft:relay/sys/wait/loop

## 終了
schedule function draft:relay/term 1s

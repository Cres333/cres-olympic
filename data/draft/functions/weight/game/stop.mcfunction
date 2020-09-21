# スケジュール解除
scoreboard players set $end _ 1
schedule clear draft:weight/sys/start
schedule clear draft:weight/sys/main
schedule clear draft:weight/sys/priv/check
schedule clear weight:sys/wait/loop
schedule clear draft:weight/sys/priv/move

# 削除
kill @e[tag=anvil]
clear @a

## 終了
schedule function draft:weight/term 1s

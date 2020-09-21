## スケジュールを停止
scoreboard players set $end _ 1
schedule clear draft:dodge/sys/wait/loop
schedule clear draft:dodge/sys/priv/retry

## アマスタ削除
kill @e[tag=ball]

## 炎の玉を消す
kill @e[type=fireball]

## 終了
schedule function draft:dodge/term 1s

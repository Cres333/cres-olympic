## スケジュールを停止
schedule clear draft:dodge/sys/wait/loop

## アマスタ削除
kill @e[tag=ball]

## 炎の玉を消す
kill @e[type=fireball]

## 終了
schedule function draft:dodge/term 1s

# 終了処理
## スケジュール削除
schedule clear core:play/wait/team

## 台を消す
fill 1048 32 -1357 1070 36 -1335 air

## 本を消す
clear @a

## ゲーム実行中フラグ
scoreboard players set $play LOGOUT 0

## スコアボードを消す
scoreboard objectives remove _TEAM

## チーム削除
team leave 赤チーム
team leave 青チーム
team leave 黄チーム
team leave 緑チーム

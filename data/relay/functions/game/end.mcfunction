# ゲーム終了
## スケジュールを停止
schedule clear relay:sys/wait/loop

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
schedule function relay:term 5s

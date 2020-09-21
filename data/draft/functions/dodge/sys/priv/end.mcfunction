# ゲーム終了
## スケジュールを停止
schedule clear draft:dodge/sys/wait/loop

## アマスタ削除
kill @e[tag=ball]

## 炎の玉を消す
kill @e[type=fireball]

## ゲームモード変更エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモード変更
gamemode spectator @a

## PLAYから除外
scoreboard players reset * PLAY

## 再起動
schedule function draft:dodge/sys/main 1s

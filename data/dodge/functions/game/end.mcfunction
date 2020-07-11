# ゲーム終了
## スケジュールを停止
schedule clear dodge:sys/wait/loop

## アイテム削除
clear @a

## アマスタ削除
kill @e[tag=ball]

## 炎の玉を消す
kill @e[type=fireball]

## 最後まで残っていたプレイヤーにスコア加算
scoreboard players operation @a[predicate=util:play] SCORE = $time _
scoreboard players add @a[predicate=util:play] SCORE 200

## ゲームモード変更エフェクト
execute as @a[predicate=util:play] at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 2 0.2 0.3 100

## ゲームモード変更
gamemode spectator @a

## PLAYから除外
scoreboard players reset * PLAY

## 終了処理
function dodge:term

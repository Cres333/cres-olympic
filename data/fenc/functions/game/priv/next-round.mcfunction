# 次のラウンド
## 初期化
scoreboard players set $gp _ 0
scoreboard players set $phase _ 0
scoreboard players add $round _ 1

## グループを統合
scoreboard players set @a[scores={_GP=10..11}] _GP 10
scoreboard players set @a[scores={_GP=20..21}] _GP 11
scoreboard players set @a[scores={_GP=30..31}] _GP 20
scoreboard players set @a[scores={_GP=40..41}] _GP 21

## 強制的に決勝は20以上を消す
execute if score $round _ matches 3.. run scoreboard players reset @a[scores={_GP=20..}] _GP

# 脱落検知
## 初期化
scoreboard players set $out _ 0
scoreboard players set $none _ 0

## ボールの存在チェック
execute unless entity @e[type=fireball] at @e[tag=ball] run scoreboard players set $none _ 1

## 爆発に巻き込まれたプレイヤーを検知
execute store success score $out _ if score $none _ matches 1 as @a[predicate=util:play,distance=..2] at @s run function dodge:sys/priv/out

## 爆発したらフィールドを狭める
execute if score $none _ matches 1 run function dodge:sys/priv/contract

## 誰かアウトになっていたらガラスリセット
execute if score $out _ matches 1.. run fill 1037 39 -1368 1081 34 -1324 air

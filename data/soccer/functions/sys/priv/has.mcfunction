# ボールを拾う
## ボールを持っているプレイヤーを検知
execute store success score $ret _ run scoreboard players set @p[distance=..1,scores={_COOL=0}] _HAS 1

## ボールを持っているプレイヤーにボールを渡す
execute if score $ret _ matches 1.. run give @p[scores={_HAS=1}] snowball

## ボールを持っていないプレイヤーにクールダウン発生
execute if score $ret _ matches 1.. run scoreboard players add @a[scores={_HAS=0}] _COOL 20

## ボールを持っていないプレイヤー以外にリードを渡す
execute if score $ret _ matches 1.. as @a[scores={_HAS=0}] run give @s lead

## ボールを持っているプレイヤーにエフェクトを掛ける
execute if score $ret _ matches 1.. as @p[scores={_HAS=1}] run effect give @s slowness 1000000 0 true

## ボールを持っていないプレイヤーにエフェクトを掛ける
execute if score $ret _ matches 1.. as @a[scores={_HAS=0}] run effect give @s speed 1000000 0 true

## 結果を破棄
scoreboard players reset $ret _

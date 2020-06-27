# 目標回数をランダムに決定
## プレイヤー込みで右クリック数をリセット
scoreboard players set @a[predicate=util:play] _CLICK 0

## 各ラウンドの最小右クリック数
execute if score $round _ matches 1 run scoreboard players set $value _CLICK 5
execute if score $round _ matches 2 run scoreboard players set $value _CLICK 16
execute if score $round _ matches 3 run scoreboard players set $value _CLICK 27
execute if score $round _ matches 4 run scoreboard players set $value _CLICK 38
execute if score $round _ matches 5 run scoreboard players set $value _CLICK 49

## 最小値に0～9を足す
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1
execute if predicate util:bit run scoreboard players add $value _CLICK 1

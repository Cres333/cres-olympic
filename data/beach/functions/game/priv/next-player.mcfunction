# 次の選手を選択
## ID割当
scoreboard players reset * _ID
scoreboard players set @a[predicate=util:play] _ID 0
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 1
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 2
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 3
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 4
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 5
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 6
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 7
scoreboard players set @r[predicate=util:play,scores={_ID=0},limit=1] _ID 8

## ID割り当てられていない人は削除
scoreboard players reset * PLAY
scoreboard players set @a[scores={_ID=1..}] PLAY 1

## 次の選手が二人もいないならリトライ
scoreboard players set $player _ 0
scoreboard players operation $player _ += @a[predicate=util:play] PLAY
execute if score $player _ matches ..1 run scoreboard players set $next _ 0

## ラウンドを確定
execute if score $player _ matches 1.. run scoreboard players set $round _ 4
execute if score $player _ matches 3.. run scoreboard players set $round _ 3
execute if score $player _ matches 5.. run scoreboard players set $round _ 2
execute if score $player _ matches 7.. run scoreboard players set $round _ 1

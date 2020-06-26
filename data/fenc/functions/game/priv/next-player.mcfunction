# 次の選手を選択
## 初期化
scoreboard players reset * PLAY
scoreboard players set $player _ 0

## 次のグループに移動
scoreboard players add $gp _ 1

## 次の選手をPLAYにする
execute if score $gp _ matches 1 run scoreboard players set @a[scores={_GP=10..11}] PLAY 1
execute if score $gp _ matches 2 run scoreboard players set @a[scores={_GP=20..21}] PLAY 1
execute if score $gp _ matches 3 run scoreboard players set @a[scores={_GP=30..31}] PLAY 1
execute if score $gp _ matches 4 run scoreboard players set @a[scores={_GP=40..41}] PLAY 1

## 次の選手が二人もいないならリトライ
scoreboard players operation $player _ += @a[predicate=util:play] PLAY
execute if score $player _ matches ..1 run scoreboard players set $retry _ 1

# フラグ追加
scoreboard players set @a JOIN 1
scoreboard players set @a PLAY 1

## 戻す
clear @a
kill @e[type=item]
scoreboard players set $play LOGOUT 1

## スコアを追加する
scoreboard players set @a[predicate=util:join] SCORE 0

## スコアをリストに表示する
scoreboard objectives setdisplay list SCORE

## プレイヤーをTP
execute as @a[gamemode=!spectator] run function util:spectator/tp

## メンバー選出後の戻り
execute if data storage main {game:soccer} run function draft:soccer/game/start
execute if data storage main {game:swim} run function draft:swim/game/start
execute if data storage main {game:clay} run function draft:clay/game/start
execute if data storage main {game:relay} run function draft:relay/game/start
execute if data storage main {game:dodge} run function draft:dodge/game/start
execute if data storage main {game:battle} run function draft:battle/game/start
execute if data storage main {game:fenc} run function draft:fenc/game/start
execute if data storage main {game:boat} run function draft:boat/game/start
execute if data storage main {game:weight} run function draft:weight/game/start

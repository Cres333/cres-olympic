# 次の競技をキャンセル
## スレッドを止める
schedule clear util:select/wait/light
schedule clear util:select/wait/check-last

## 終了処理
scoreboard objectives remove _TICKET
clear @a
kill @e[type=item]
scoreboard players set $play LOGOUT 1

## プレイヤーをTP
execute as @a[gamemode=!spectator] run function util:spectator/tp

## 各競技を終了する
execute if data storage main {game:soccer} run function soccer:term
execute if data storage main {game:swim} run function swim:term
execute if data storage main {game:clay} run function clay:term
execute if data storage main {game:relay} run function relay:term
execute if data storage main {game:dodge} run function dodge:term
execute if data storage main {game:battle} run function battle:term
execute if data storage main {game:fenc} run function fenc:term
execute if data storage main {game:boat} run function boat:term
execute if data storage main {game:weight} run function weight:term
execute if data storage main {game:sky} run function sky:term
execute if data storage main {game:beach} run function beach:term

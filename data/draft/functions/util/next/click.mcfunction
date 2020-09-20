# ループを止める
schedule clear draft:util/next/wait

## クリア
clear @a
gamemode spectator @a

## 次の競技へ
execute if data storage main {game:soccer} run function draft:soccer/game/stop
execute if data storage main {game:swim} run function draft:swim/game/stop
execute if data storage main {game:clay} run function draft:clay/game/stop
execute if data storage main {game:relay} run function draft:relay/game/stop
execute if data storage main {game:dodge} run function draft:dodge/game/stop
execute if data storage main {game:battle} run function draft:battle/game/stop
execute if data storage main {game:fenc} run function draft:fenc/game/stop
execute if data storage main {game:boat} run function draft:boat/game/stop
execute if data storage main {game:weight} run function draft:weight/game/stop

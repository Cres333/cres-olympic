# 各競技への戻り
## スコアをリセット
scoreboard players reset $util:count _

execute if data storage main {game:soccer} run function soccer:sys/start
execute if data storage main {game:swim} run function swim:sys/start
execute if data storage main {game:clay} run function clay:sys/start
execute if data storage main {game:relay} run function relay:sys/start
execute if data storage main {game:dodge} run function dodge:sys/start
execute if data storage main {game:battle} run function battle:sys/start
execute if data storage main {game:fenc} run function fenc:sys/start
execute if data storage main {game:boat} run function boat:sys/start

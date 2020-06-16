# 各競技への戻り
## 終了処理
scoreboard objectives remove _TICKET
clear @a
kill @e[type=item]

## カウントを増やす
scoreboard players add @a[predicate=util:join] COUNT 1

## メンバー選出後の戻り
execute if data storage main {game:soccer} run function soccer:init/generate-team
execute if data storage main {game:swim} run function swim:game/start
execute if data storage main {game:clay} run function clay:game/start

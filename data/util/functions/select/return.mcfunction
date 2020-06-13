# 各競技への戻り
## 終了処理
scoreboard objectives remove _TICKET
clear @a
kill @e[type=item]

## メンバー選出後の戻り
execute if data storage main {game:soccer} run function soccer:init/generate-team

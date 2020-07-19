# ボスバーの初期設定
bossbar set life1 max 50
bossbar set life1 style notched_10
bossbar set life1 color yellow
bossbar set life1 visible true
bossbar set life2 max 50
bossbar set life2 style notched_10
bossbar set life2 color yellow
bossbar set life2 visible true
bossbar set life3 max 50
bossbar set life3 style notched_10
bossbar set life3 color yellow
bossbar set life3 visible true
bossbar set life4 max 50
bossbar set life4 style notched_10
bossbar set life4 color yellow
bossbar set life4 visible true
bossbar set life5 max 50
bossbar set life5 style notched_10
bossbar set life5 color yellow
bossbar set life5 visible true
bossbar set life6 max 50
bossbar set life6 style notched_10
bossbar set life6 color yellow
bossbar set life6 visible true
bossbar set life7 max 50
bossbar set life7 style notched_10
bossbar set life7 color yellow
bossbar set life7 visible true
bossbar set life8 max 50
bossbar set life8 style notched_10
bossbar set life8 color yellow
bossbar set life8 visible true

execute store result bossbar life1 value run scoreboard players get @p[scores={_ID=1}] _LIFE
execute store result bossbar life2 value run scoreboard players get @p[scores={_ID=2}] _LIFE
execute store result bossbar life3 value run scoreboard players get @p[scores={_ID=3}] _LIFE
execute store result bossbar life4 value run scoreboard players get @p[scores={_ID=4}] _LIFE
execute store result bossbar life5 value run scoreboard players get @p[scores={_ID=5}] _LIFE
execute store result bossbar life6 value run scoreboard players get @p[scores={_ID=6}] _LIFE
execute store result bossbar life7 value run scoreboard players get @p[scores={_ID=7}] _LIFE
execute store result bossbar life8 value run scoreboard players get @p[scores={_ID=8}] _LIFE

bossbar set life1 players @p[predicate=util:play,scores={_ID=1}]
bossbar set life2 players @p[predicate=util:play,scores={_ID=2}]
bossbar set life3 players @p[predicate=util:play,scores={_ID=3}]
bossbar set life4 players @p[predicate=util:play,scores={_ID=4}]
bossbar set life5 players @p[predicate=util:play,scores={_ID=5}]
bossbar set life6 players @p[predicate=util:play,scores={_ID=6}]
bossbar set life7 players @p[predicate=util:play,scores={_ID=7}]
bossbar set life8 players @p[predicate=util:play,scores={_ID=8}]

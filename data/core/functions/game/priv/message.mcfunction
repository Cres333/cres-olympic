# ロード中表示
scoreboard players add $load _NEXT 1
execute if score $load _NEXT matches 1 run title @a actionbar {"translate":"%s - - - -","with":[{"text":"♪","color":"#FF0000"}]}
execute if score $load _NEXT matches 2 run title @a actionbar {"translate":"- %s - - -","with":[{"text":"♪","color":"#FF4500"}]}
execute if score $load _NEXT matches 3 run title @a actionbar {"translate":"- - %s - -","with":[{"text":"♪","color":"#FFFF00"}]}
execute if score $load _NEXT matches 4 run title @a actionbar {"translate":"- - - %s -","with":[{"text":"♪","color":"#008000"}]}
execute if score $load _NEXT matches 5 run title @a actionbar {"translate":"- - - - %s","with":[{"text":"♪","color":"#0000FF"}]}
execute if score $load _NEXT matches 5.. run scoreboard players set $load _NEXT 0

execute if score $load _NEXT matches 0.. run schedule function core:game/priv/message 1s

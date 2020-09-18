# ボート復帰
execute as @e[type=boat,limit=1,sort=nearest,distance=..15] if entity @s[nbt={OnGround:true}] run tag @s add remove
execute as @e[tag=remove] at @s run kill @e[sort=nearest,limit=1,tag=rider]
execute if entity @e[tag=remove] run summon boat ~ ~0.5 ~ {Invulnerable:true,Tags:["none"],Passengers:[{id:"minecraft:armor_stand",NoGravity:true,Marker:true,Invisible:true,Tags:["rider"]}]}
execute as @e[type=boat,tag=none] at @s rotated as @p[predicate=boat:ride,sort=nearest] run tp ~ ~ ~
tag @e[tag=none] remove none
kill @e[tag=remove]

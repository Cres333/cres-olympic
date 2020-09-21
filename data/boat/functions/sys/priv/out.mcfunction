# ボート復帰
execute as @e[type=boat,limit=1,sort=nearest,distance=..15] if entity @s[nbt={OnGround:true}] at @s if block ~ ~ ~ water run tag @s add remove
execute as @e[tag=remove] at @s run kill @e[sort=nearest,limit=1,tag=rider]
execute if entity @e[tag=remove] if entity @s[y_rotation=-90..90] run summon boat ~ ~0.5 ~ {Invulnerable:true,Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",NoGravity:true,Marker:true,Invisible:true,Tags:["rider"]}]}
execute if entity @e[tag=remove] unless entity @s[y_rotation=-90..90] run summon boat ~ ~0.5 ~ {Invulnerable:true,Rotation:[180.0f,0.0f],Passengers:[{id:"minecraft:armor_stand",NoGravity:true,Marker:true,Invisible:true,Tags:["rider"]}]}
kill @e[tag=remove]

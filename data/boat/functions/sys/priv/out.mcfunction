# ボート復帰
execute as @e[type=boat,limit=1,sort=nearest,distance=..15] if entity @s[nbt={OnGround:true}] run tag @s add remove
execute as @e[tag=remove] at @s run kill @e[sort=nearest,limit=1,tag=rider]
execute if entity @e[tag=remove] run summon boat ~ ~0.5 ~ {Invulnerable:true,Passengers:[{id:"minecraft:armor_stand",NoGravity:true,Marker:true,Invisible:true,Tags:["rider"]}]}
kill @e[tag=remove]

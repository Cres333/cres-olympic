# ボート復帰
execute as @e[type=boat,limit=1,sort=nearest,distance=..15] if entity @s[nbt={OnGround:true}] run tp @s ~ ~0.5 ~

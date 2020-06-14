# アマスタ召喚
execute as @p[scores={_ID=1,PLAY=1}] positioned 1059 31.6 -1350 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.0"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=2,PLAY=1}] positioned 1059 31.6 -1342 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.1"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=3,PLAY=1}] positioned 1063 31.6 -1346 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.2"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=4,PLAY=1}] positioned 1055 31.6 -1346 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.3"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=5,PLAY=1}] positioned 1062 31.6 -1349 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.4"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=6,PLAY=1}] positioned 1056 31.6 -1343 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.5"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=7,PLAY=1}] positioned 1062 31.6 -1343 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.6"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}
execute as @p[scores={_ID=8,PLAY=1}] positioned 1056 31.6 -1349 run summon armor_stand ~ ~ ~ {Marker:true,Glowing:true,NoGravity:true,Invisible:true,Tags:["anvil","id.7"],ArmorItems:[{},{},{},{id:"anvil",Count:1b}]}

# アマスタの向き固定
execute as @e[type=armor_stand,tag=anvil] at @s run tp @s ~ ~ ~ facing 1059 31.6 -1346

## 最初にタグを追加する
# tag <名前> add r|b|y|g

## 追加するプレイヤーの初期ID
scoreboard players set @p[tag=r,team=] ID 0
scoreboard players set @p[tag=b,team=] ID 0
scoreboard players set @p[tag=y,team=] ID 0
scoreboard players set @p[tag=g,team=] ID 0

## IDの割当
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=101,POINT=0}] unless entity @p[scores={ID=101..108}] run scoreboard players set @s ID 101
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=102,POINT=0}] unless entity @p[scores={ID=102..108}] run scoreboard players set @s ID 102
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=103,POINT=0}] unless entity @p[scores={ID=103..108}] run scoreboard players set @s ID 103
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=104,POINT=0}] unless entity @p[scores={ID=104..108}] run scoreboard players set @s ID 104
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=105,POINT=0}] unless entity @p[scores={ID=105..108}] run scoreboard players set @s ID 105
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=106,POINT=0}] unless entity @p[scores={ID=106..108}] run scoreboard players set @s ID 106
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=107,POINT=0}] unless entity @p[scores={ID=107..108}] run scoreboard players set @s ID 107
execute as @p[tag=r,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=108,POINT=0}] unless entity @p[scores={ID=108..108}] run scoreboard players set @s ID 108

execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=201,POINT=0}] unless entity @p[scores={ID=201..208}] run scoreboard players set @s ID 201
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=202,POINT=0}] unless entity @p[scores={ID=202..208}] run scoreboard players set @s ID 202
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=203,POINT=0}] unless entity @p[scores={ID=203..208}] run scoreboard players set @s ID 203
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=204,POINT=0}] unless entity @p[scores={ID=204..208}] run scoreboard players set @s ID 204
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=205,POINT=0}] unless entity @p[scores={ID=205..208}] run scoreboard players set @s ID 205
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=206,POINT=0}] unless entity @p[scores={ID=206..208}] run scoreboard players set @s ID 206
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=207,POINT=0}] unless entity @p[scores={ID=207..208}] run scoreboard players set @s ID 207
execute as @p[tag=b,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=208,POINT=0}] unless entity @p[scores={ID=208..208}] run scoreboard players set @s ID 208

execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=301,POINT=0}] unless entity @p[scores={ID=301..308}] run scoreboard players set @s ID 301
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=302,POINT=0}] unless entity @p[scores={ID=302..308}] run scoreboard players set @s ID 302
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=303,POINT=0}] unless entity @p[scores={ID=303..308}] run scoreboard players set @s ID 303
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=304,POINT=0}] unless entity @p[scores={ID=304..308}] run scoreboard players set @s ID 304
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=305,POINT=0}] unless entity @p[scores={ID=305..308}] run scoreboard players set @s ID 305
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=306,POINT=0}] unless entity @p[scores={ID=306..308}] run scoreboard players set @s ID 306
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=307,POINT=0}] unless entity @p[scores={ID=307..308}] run scoreboard players set @s ID 307
execute as @p[tag=y,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=308,POINT=0}] unless entity @p[scores={ID=308..308}] run scoreboard players set @s ID 308

execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=401,POINT=0}] unless entity @p[scores={ID=401..408}] run scoreboard players set @s ID 401
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=402,POINT=0}] unless entity @p[scores={ID=402..408}] run scoreboard players set @s ID 402
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=403,POINT=0}] unless entity @p[scores={ID=403..408}] run scoreboard players set @s ID 403
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=404,POINT=0}] unless entity @p[scores={ID=404..408}] run scoreboard players set @s ID 404
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=405,POINT=0}] unless entity @p[scores={ID=405..408}] run scoreboard players set @s ID 405
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=406,POINT=0}] unless entity @p[scores={ID=406..408}] run scoreboard players set @s ID 406
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=407,POINT=0}] unless entity @p[scores={ID=407..408}] run scoreboard players set @s ID 407
execute as @p[tag=g,scores={ID=0}] if entity @e[tag=m,scores={ARM_ID=408,POINT=0}] unless entity @p[scores={ID=408..408}] run scoreboard players set @s ID 408

## チームに参加
team join r @a[tag=r,scores={ID=101..108}]
team join b @a[tag=b,scores={ID=201..208}]
team join y @a[tag=y,scores={ID=301..308}]
team join g @a[tag=g,scores={ID=401..408}]

## ゲームモードを変更
gamemode spectator @a[tag=r]
gamemode spectator @a[tag=b]
gamemode spectator @a[tag=y]
gamemode spectator @a[tag=g]

## タグ削除
tag @a remove r
tag @a remove b
tag @a remove y
tag @a remove g
scoreboard players reset @a[scores={ID=0}] ID

# プレイヤーを強制追加
## 現状のプレイ人数
scoreboard players set $i _ 0
execute as @a[predicate=util:play] run scoreboard players add $i _ 1

## まだ余裕があったら追加
execute if score $i _ matches ..3 as @r[predicate=util:join,limit=1] run tag @s add new

## 追加する項目
execute as @p[tag=new] run scoreboard players reset @s _DEATH
execute as @p[tag=new] run tp @s 1059 45 -1346
execute as @p[tag=new] run gamemode adventure @s
execute as @p[tag=new] run give @s diamond_sword{Enchantments:[{id:"minecraft:knockback",lvl:2}]}
execute as @p[tag=new] run scoreboard players set @s PLAY 1

## 後始末
tag @a[tag=new] remove new

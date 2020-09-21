# ゲームの機構
## 初期化
scoreboard players set $summon _ 0
scoreboard players set @p[tag=next] PLAY 1
tag @a remove next
execute unless entity @p[predicate=util:play] run scoreboard players set @r[predicate=util:join,limit=1] PLAY 1

## 選手を配置
gamemode adventure @p[predicate=util:play]
tp @p[predicate=util:play] 1059 33 -1346 180 0

## クロスボウと矢を渡す
give @p[predicate=util:play] crossbow{Enchantments:[{id:"minecraft:multishot",lvl:1},{id:"minecraft:quick_charge",lvl:5}]}
give @p[predicate=util:play] arrow 10

# 開始処理
schedule function draft:clay/sys/wait/loop 3s
function draft:clay/sys/wait/error

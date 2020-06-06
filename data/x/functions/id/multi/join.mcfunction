# 参加最低人数をスコアボードにコピー
execute store result score $selectNum _ run data get storage main join
scoreboard players set $selectR _ 0
scoreboard players set $selectB _ 0
scoreboard players set $selectY _ 0
scoreboard players set $selectG _ 0

# TP
gamemode adventure @a[scores={ID=0..}]
tp @a[team=r] 1004 31 -1468 90 0
tp @a[team=b] 1114 31 -1224 -90 0
tp @a[team=y] 1131 31 -1451 180 0
tp @a[team=g] 987 31 -1241 0 0

# 紙を渡す
give @a[scores={ID=0..}] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}
# execute if entity @a[predicate=x:ticket] run say test

# メッセージ
tellraw @a[scores={ID=0..}] {"text":"[システム] 次の競技に参加する方は、参加券を捨ててください。"}
tellraw @a[scores={ID=0..}] [{"text":"[システム] 参加可能人数は、"},{"nbt":"join","storage":"main"},{"text":"人です。"}]

# 待受
execute if entity @p[team=r] run function x:id/multi/teams/red
execute if entity @p[team=b] run function x:id/multi/teams/blue
execute if entity @p[team=y] run function x:id/multi/teams/yellow
execute if entity @p[team=g] run function x:id/multi/teams/green

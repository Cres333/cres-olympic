# チームを選択
## チーム情報を取得
execute if score $team _ matches 0 run data modify storage soccer now set from storage soccer battle[0]
execute if score $team _ matches 1 run data modify storage soccer now set from storage soccer battle[1]
execute if score $team _ matches 2 run data modify storage soccer now set from storage soccer battle[2]
execute if score $team _ matches 3 run data modify storage soccer now set from storage soccer battle[3]
execute if score $team _ matches 4 run data modify storage soccer now set from storage soccer battle[4]
execute if score $team _ matches 5 run data modify storage soccer now set from storage soccer battle[5]
execute if score $team _ matches 6 run data modify storage soccer now set from storage soccer battle[6]

## 白チームを設定
execute if data storage soccer {now:{w:red}} run scoreboard players set @a[team=r,predicate=util:join] _W 1
execute if data storage soccer {now:{w:blue}} run scoreboard players set @a[team=b,predicate=util:join] _W 1
execute if data storage soccer {now:{w:yellow}} run scoreboard players set @a[team=y,predicate=util:join] _W 1
execute if data storage soccer {now:{w:green}} run scoreboard players set @a[team=g,predicate=util:join] _W 1
scoreboard players set @a[scores={_W=1}] PLAY 1

## 黒チームを設定
execute if data storage soccer {now:{b:red}} run scoreboard players set @a[team=r,predicate=util:join] _B 1
execute if data storage soccer {now:{b:blue}} run scoreboard players set @a[team=b,predicate=util:join] _B 1
execute if data storage soccer {now:{b:yellow}} run scoreboard players set @a[team=y,predicate=util:join] _B 1
execute if data storage soccer {now:{b:green}} run scoreboard players set @a[team=g,predicate=util:join] _B 1
scoreboard players set @a[scores={_B=1}] PLAY 1

## 背番号を設定
scoreboard players add @a[scores={_W=1},limit=1] _W 1
scoreboard players add @a[scores={_W=1},limit=1] _W 2
scoreboard players add @a[scores={_W=1},limit=1] _W 3
scoreboard players add @a[scores={_B=1},limit=1] _B 1
scoreboard players add @a[scores={_B=1},limit=1] _B 2
scoreboard players add @a[scores={_B=1},limit=1] _B 3

# システム開始処理
## 全員に弓を渡す
scoreboard players set @a[predicate=util:play] _USED 0
#give @a[predicate=util:play] crossbow{Unbreakable:true,Enchantments:[{id:"minecraft:quick_charge",lvl:5s}]}
#give @a[predicate=util:play] arrow 2

## 壁を消す
fill 1109 36 -1354 1091 40 -1346 air
fill 1109 36 -1346 1091 38 -1346 cyan_stained_glass

function boat:sys/wait/loop

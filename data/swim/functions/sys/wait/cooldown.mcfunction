# クールダウン処理
## クールダウンを減らす
scoreboard players remove @a[scores={_COOL=1..}] _COOL 1

## クールダウンが0でInventoryにトライデントがない場合
give @a[predicate=util:play,predicate=!swim:has-trident,scores={_COOL=0}] trident{HideFlags:1,Enchantments:[{id:"riptide",lvl:1}]}

## トライデントを使った
scoreboard players set @a[scores={_USE=1..}] _COOL 60
clear @a[scores={_USE=1..}] trident
scoreboard players reset @a[scores={_USE=1..}] _USE

# クールダウン処理
## クールダウンを減らす
scoreboard players remove @a[scores={_COOL=1..},predicate=!sky:has-rocket] _COOL 1

## クールダウンが0でInventoryに花火がない場合
give @a[predicate=util:play,predicate=!sky:has-rocket,scores={_COOL=0}] firework_rocket

## 花火を使った
scoreboard players set @a[scores={_USE=1..}] _COOL 100
scoreboard players reset @a[scores={_USE=1..}] _USE

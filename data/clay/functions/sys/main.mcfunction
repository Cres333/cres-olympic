# ゲームの機構
## 初期化
scoreboard players set $summon _ 0

## キルカウントリセット
scoreboard players reset * _KILL
scoreboard players set @p[predicate=util:play] _KILL 0

## キルカウント表示
scoreboard objectives setdisplay sidebar _KILL

## 選手を配置
gamemode adventure @p[predicate=util:play]
tp @p[predicate=util:play] 1059 33 -1346 180 0

## クロスボウと矢を渡す
give @p[predicate=util:play] crossbow{Enchantments:[{id:"minecraft:multishot",lvl:1},{id:"minecraft:quick_charge",lvl:5}]}
give @p[predicate=util:play] arrow 20

## カウントダウン
function util:count/start

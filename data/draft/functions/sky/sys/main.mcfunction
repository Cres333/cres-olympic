# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players set @a[predicate=util:join] PLAY 1
scoreboard players set @a[predicate=util:play] _COLOR 1

## エフェクト追加
effect give @a[predicate=util:join] resistance 1000000 100 true

## エリトラを装備させる
replaceitem entity @a[predicate=util:play] armor.chest elytra{Unbreakable:true}
give @a[predicate=util:play] firework_rocket 3

## 選手をTPする
function sky:sys/priv/setting-position

## カラーを召喚
function sky:sys/priv/summon

## リセット
scoreboard players reset * _USE
scoreboard players set @a[predicate=util:play] _COOL 0

function draft:sky/sys/wait/loop

# ゲームの機構
## 初期化
scoreboard players set $cool _ 200
scoreboard players set $time _ 1800
scoreboard players set @a[predicate=util:play,team=r] _COLOR 1
scoreboard players set @a[predicate=util:play,team=b] _COLOR 2
scoreboard players set @a[predicate=util:play,team=y] _COLOR 3
scoreboard players set @a[predicate=util:play,team=g] _COLOR 4
scoreboard objectives setdisplay sidebar _SHOW

## 時間
bossbar set time color white
execute store result bossbar time max run scoreboard players get $time _
execute store result bossbar time value run scoreboard players get $time _
bossbar set time players @a
bossbar set time visible true

## エフェクト追加
effect give @a[predicate=util:join] glowing 1000000 0 true
effect give @a[predicate=util:join] resistance 1000000 100 true

## エリトラを装備させる
replaceitem entity @a[predicate=util:play] armor.chest elytra{Unbreakable:true}
give @a[predicate=util:play] firework_rocket 3

## 選手をTPする
function sky:sys/priv/setting-position

## カウントダウン開始
schedule function util:count/start 5s

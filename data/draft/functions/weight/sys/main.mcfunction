# ゲームの機構
## 初期化
scoreboard players set $end _ 0
scoreboard players set $round _ 4
scoreboard players reset * _LIFE
scoreboard players set @r[predicate=util:join,limit=8] PLAY 1
scoreboard players set @a[predicate=util:play] _ID 0
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 1
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 2
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 3
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 4
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 5
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 6
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 7
scoreboard players set @p[predicate=util:play,scores={_ID=0}] _ID 8

scoreboard players set @a[predicate=util:play] _LIFE 15

## ボスバーを設定
function weight:sys/priv/bar

## 選手をTPする
function weight:sys/priv/setting-position

## ニンジン棒を渡す
give @a[predicate=util:play] minecraft:carrot_on_a_stick

## 少し時間をあける
schedule function draft:weight/sys/start 3s

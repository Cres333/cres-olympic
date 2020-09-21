# ゲームの機構
## 初期化
scoreboard players reset * _LOSER
scoreboard players reset * _DAMAGE
scoreboard players reset * _ATTACK
scoreboard players set $end _ 0

## 選手をTPする
scoreboard players set @r[predicate=util:join,limit=2] PLAY 1
gamemode adventure @r[predicate=util:play,limit=1]
tp @p[gamemode=adventure,predicate=util:play] 1059 53 -1333 180 0
tp @p[gamemode=spectator,predicate=util:play] 1059 53 -1359 0 0
gamemode adventure @a[predicate=util:play]

## 選手に剣を持たせる
give @a[predicate=util:play] iron_sword

## スピード上昇エフェクトをかける
effect give @a[predicate=util:play] speed 100000 5 true

# 開始
scoreboard players set @a[predicate=util:play] _DAMAGE 0
function draft:fenc/sys/wait/loop

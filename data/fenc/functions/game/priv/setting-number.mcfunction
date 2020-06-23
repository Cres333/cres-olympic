# 背番号の設定
scoreboard players set @a[predicate=util:join] _ID 0

scoreboard players set @r[limit=1,scores={_ID=0}] _ID 1
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 2
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 3
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 4
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 5
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 6
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 7
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 8

## 現在のID
scoreboard players set $current _ID 0

## 最初のプレイヤーをPLAYに設定
function fenc:game/priv/next-player

# 参加者全員をPLAY=1にする
scoreboard players set @a[predicate=util:join] PLAY 1

# 参加者全員をLIFE=50にする
scoreboard players set @a[predicate=util:play] _LIFE 50

# 参加者にIDをふる
scoreboard players set @a[predicate=util:play] _ID 0
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 1
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 2
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 3
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 4
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 5
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 6
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 7
scoreboard players set @r[limit=1,scores={_ID=0}] _ID 8

# 各場所にテレポート
function weight:ready/tp/x

function weight:game/x

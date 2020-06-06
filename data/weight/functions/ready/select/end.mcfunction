# 参加者全員をPLAY=1にする
scoreboard players set @a[scores={JOIN=0..}] PLAY 1

# 参加者全員をLIFE=50にする
scoreboard players set @a[predicate=util:play] _LIFE 50

# 各場所にテレポート
function weight:ready/tp/x

function weight:game/x

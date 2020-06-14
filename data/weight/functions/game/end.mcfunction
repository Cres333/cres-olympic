# ラウンド数が5未満 && 成功したプレイヤー
scoreboard players set $if _ 0
execute store success score $if _ if score $round _ matches ..4 if entity @a[scores={_LIFE=1..}]

# ロード表示
function core:loading/x
scoreboard players set $max _LOADING 80

# TRUE
execute if score $if _ matches 1 run schedule function weight:game/x 8s

# FALSE
execute if score $if _ matches 0 run schedule function weight:term/x 8s

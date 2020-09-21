# 説明中の表示
function sky:sys/wait/color

title @a[gamemode=spectator] actionbar {"bold":true,"color":"red","text":"この競技は[ビデオ設定]の[パーティクル表示]を[すべて]にして下さい"}

execute if score $temp _ matches 1 run schedule function sky:sys/wait/description 1t

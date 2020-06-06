# スコアボードを用意 (途中でmaxを変更OK)
scoreboard objectives add _LOADING dummy
scoreboard players set $max _LOADING 100
scoreboard players set $value _LOADING 0

# ボスバーを用意
bossbar add loading {"text":"ロード中…"}
bossbar set loading color yellow
bossbar set loading max 100
bossbar set loading value 0
bossbar set loading players @a
bossbar set loading style progress
bossbar set loading visible true

function x:loading/load

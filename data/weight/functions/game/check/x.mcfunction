# 表示用に右クリック連打数をコピー
scoreboard players reset * _SHOW
execute as @a[predicate=util:play] run scoreboard players operation ~~~~~ _SHOW = $value _CLICK

# 連打回数チェック
execute as @a[predicate=util:play] if score @s _CLICK < $value _CLICK run scoreboard players set @s _LIFE 0
execute as @a[predicate=util:play] if score @s _CLICK > $value _CLICK run function weight:game/check/remove_life

# 金床を配置
function weight:game/check/set_anvil

# 持ち上げ用のスコアボードを用意
scoreboard players set $up _CLICK 0

# 持ち上げ終了用に少し数値を増やす
scoreboard players operation $border _CLICK > @a _CLICK
scoreboard players add $border _CLICK 20

# スコアボード表示
scoreboard objectives setdisplay sidebar _SHOW

# 金床を連打数に応じて持ち上げる
function weight:game/check/move_anvil

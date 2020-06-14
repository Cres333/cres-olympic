# ゲームモードを設定
execute if score $multi _CHANGE matches 1 run data merge storage main {teamNum:4}
scoreboard players set $multi _CHANGE 0

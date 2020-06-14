# ゲームモードを設定
execute if score $mode _CHANGE matches 1 run data merge storage main {mode:only,teamNum:0}

# ID割当
execute if score $mode _CHANGE matches 1 run scoreboard players set @p ID 0

# スコアボード破棄
scoreboard objectives remove _CHANGE

tellraw @a {"text":"[システム] 練習モードでゲームを開始するように設定しました。"}

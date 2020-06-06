# ゲームモードを設定
execute if score $mode _CHANGE matches 1 run data merge storage main {mode:single,teamNum:0}
execute if score $mode _CHANGE matches 1 run scoreboard players set $single _CHANGE 1
scoreboard players set $mode _CHANGE 0

# 次の選択
tellraw @a {"text":"[システム] 参加者を決める方法を選択してください。"}
tellraw @a {"translate":"[システム] [%s] [%s]","with":[{"text":"ランダムに最大８人選ぶ","clickEvent":{"action":"run_command","value":"/functionx:play/mode/single-random"}},{"text":"スペクテイターモード以外から最大８人選ぶ","clickEvent":{"action":"run_command","value":"/functionx:play/mode/single-spectator"}}]}

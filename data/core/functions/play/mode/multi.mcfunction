# ゲームモードを設定
execute if score $mode _CHANGE matches 1 run data merge storage main {mode:multi,teamNum:2}
execute if score $mode _CHANGE matches 1 run scoreboard players set $multi _CHANGE 1
scoreboard players set $mode _CHANGE 0

# 次の選択
tellraw @a {"text":"[システム] チーム数を選択してください。"}
tellraw @a {"translate":"[システム] [%s] [%s] [%s]","with":[{"text":"２チーム","clickEvent":{"action":"run_command","value":"/functionx:play/mode/multi-2"}},{"text":"３チーム","clickEvent":{"action":"run_command","value":"/functionx:play/mode/multi-3"}},{"text":"４チーム","clickEvent":{"action":"run_command","value":"/functionx:play/mode/multi-4"}}]}

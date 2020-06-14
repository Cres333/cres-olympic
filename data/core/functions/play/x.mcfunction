function core:init/x

scoreboard objectives add _CHANGE dummy
scoreboard players set $mode _CHANGE 1

tellraw @a {"text":"[システム] ゲームモードを選択してください。"}
tellraw @a {"translate":"[システム] [%s] [%s] [%s]","with":[{"text":"一人で練習する","clickEvent":{"action":"run_command","value":"/function core:play/mode/only"}},{"text":"個人戦で競い合う","clickEvent":{"action":"run_command","value":"/function core:play/mode/single"}},{"text":"チーム戦で競い合う","clickEvent":{"action":"run_command","value":"/function core:play/mode/multi"}}]}

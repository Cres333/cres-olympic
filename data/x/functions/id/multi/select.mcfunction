# 成否判定の初期化
scoreboard players set $success _SELECT 0

# 参加回数の少ない順に追加
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=0,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=1,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=2,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=3,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=4,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=5,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=6,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=7,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=8,_SELECT=0},sort=random,limit=1] _SELECT 1
execute if score $success _SELECT matches 0 store success score $success _SELECT run scoreboard players set @s[scores={COUNT=9,_SELECT=0},sort=random,limit=1] _SELECT 1

# 成功していたらremainを減らしてJOINのID化
execute unless score $success _SELECT matches 0 run scoreboard players remove $remain _SELECT 1
scoreboard players operation @s[scores={_SELECT=1}] JOIN = $remain _SELECT
scoreboard players reset @s[scores={_SELECT=1}] _SELECT

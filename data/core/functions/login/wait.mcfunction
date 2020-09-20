# ログアウト検知
execute if score $play LOGOUT matches 1 as @a[tag=!login,scores={LOGOUT=1..}] run tag @s add login
scoreboard players reset @a[scores={LOGOUT=1..}] LOGOUT

execute as @a[tag=login,predicate=!util:play] run gamemode spectator @s
execute as @a[tag=login,predicate=util:join,predicate=!util:play] run function core:login/join

tag @a[tag=login] remove login

schedule function core:login/wait 1s

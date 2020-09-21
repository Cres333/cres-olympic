schedule clear draft:fenc/sys/wait/loop
schedule clear fenc:sys/wait/bomb
schedule clear draft:fenc/sys/main
schedule clear draft:fenc/sys/priv/end

## リセット
scoreboard players reset * _LOSER
scoreboard players reset * _DAMAGE
scoreboard players reset * _ATTACK

## とりあえずクリア
kill @e[tag=move]
clear @a iron_sword
effect clear @a

## 終了
schedule function draft:fenc/term 1s

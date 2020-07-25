# コーナーの外側に出た
kill @e[type=snowball]
summon snowball 1058 60 -1345

execute if score $cornor _ matches 1 run spreadplayers 1058 -1345 1 15 false @e[type=snowball]
execute if score $cornor _ matches 2 run spreadplayers 1058 -1370 1 15 false @e[type=snowball]
execute if score $cornor _ matches 3 run spreadplayers 1058 -1320 1 15 false @e[type=snowball]
execute if score $cornor _ matches 4..5 run spreadplayers 1058 -1345 1 15 false @e[type=snowball]
execute as @e[type=snowball] at @s run tp @s ~ 50 ~

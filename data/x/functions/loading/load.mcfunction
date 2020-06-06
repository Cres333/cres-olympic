scoreboard players add $value _LOADING 1

execute store result bossbar loading max run scoreboard players get $max _LOADING
execute store result bossbar loading value run scoreboard players get $value _LOADING

execute if score $value _LOADING < $max _LOADING run schedule function x:loading/load 2t
execute unless score $value _LOADING < $max _LOADING run function x:loading/end

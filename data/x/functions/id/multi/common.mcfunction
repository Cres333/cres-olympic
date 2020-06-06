scoreboard objectives add _SELECT dummy
scoreboard players operation $remain _SELECT = $selectNum _
scoreboard players set @s _SELECT 0

# 最大８人選出
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select
execute if score $remain _SELECT matches 1.. run function x:id/multi/select

scoreboard objectives remove _SELECT
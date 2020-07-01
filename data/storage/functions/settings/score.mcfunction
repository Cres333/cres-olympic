scoreboard objectives remove ARM_ID
scoreboard objectives remove GOLD
scoreboard objectives remove SILVER
scoreboard objectives remove BRONZE
scoreboard objectives remove POINT

scoreboard objectives add ARM_ID dummy "アマスタID"
scoreboard objectives add GOLD dummy "金メダル保持数"
scoreboard objectives add SILVER dummy "銀メダル保持数"
scoreboard objectives add BRONZE dummy "銅メダル保持数"
scoreboard objectives add POINT dummy "保有ポイント"

scoreboard players set @e[tag=m] ARM_ID -1
scoreboard players set @e[tag=m] GOLD 0
scoreboard players set @e[tag=m] SILVER 0
scoreboard players set @e[tag=m] BRONZE 0
scoreboard players set @e[tag=m] POINT 0

scoreboard players set $r GOLD 0
scoreboard players set $b GOLD 0
scoreboard players set $y GOLD 0
scoreboard players set $g GOLD 0

scoreboard players set $r SILVER 0
scoreboard players set $b SILVER 0
scoreboard players set $y SILVER 0
scoreboard players set $g SILVER 0

scoreboard players set $r BRONZE 0
scoreboard players set $b BRONZE 0
scoreboard players set $y BRONZE 0
scoreboard players set $g BRONZE 0

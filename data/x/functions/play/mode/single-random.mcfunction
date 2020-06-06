# ID割当
execute if score $single _CHANGE matches 1 run scoreboard players set @r[limit=8] ID -1

scoreboard players set @r[limit=1,scores={ID=-1}] ID 0
scoreboard players set @r[limit=1,scores={ID=-1}] ID 1
scoreboard players set @r[limit=1,scores={ID=-1}] ID 2
scoreboard players set @r[limit=1,scores={ID=-1}] ID 3
scoreboard players set @r[limit=1,scores={ID=-1}] ID 4
scoreboard players set @r[limit=1,scores={ID=-1}] ID 5
scoreboard players set @r[limit=1,scores={ID=-1}] ID 6
scoreboard players set @r[limit=1,scores={ID=-1}] ID 7

# スコアボード破棄
scoreboard objectives remove _CHANGE

tellraw @a {"text":"[システム] 個人戦モードでゲームを開始するように設定しました。"}

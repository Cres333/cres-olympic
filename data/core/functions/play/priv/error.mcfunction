# エラー処理
## 各チーム9人以上いる場合はエラー
execute if score 1:赤チーム _TEAM matches 9.. run scoreboard players set $core:error _ 1
execute if score 2:青チーム _TEAM matches 9.. run scoreboard players set $core:error _ 1
execute if score 3:黄チーム _TEAM matches 9.. run scoreboard players set $core:error _ 1
execute if score 4:緑チーム _TEAM matches 9.. run scoreboard players set $core:error _ 1

## 各チーム１人(赤は0人)の場合もエラー
execute if score 1:赤チーム _TEAM matches 0 run scoreboard players set $core:error _ 2
execute if score 2:青チーム _TEAM matches 1 run scoreboard players set $core:error _ 2
execute if score 3:黄チーム _TEAM matches 1 run scoreboard players set $core:error _ 2
execute if score 4:緑チーム _TEAM matches 1 run scoreboard players set $core:error _ 2

## 各チーム前提のチームがいないとエラー
execute if score 3:黄チーム _TEAM matches 2.. if score 2:青チーム _TEAM matches 0 run scoreboard players set $core:error _ 3
execute if score 4:緑チーム _TEAM matches 2.. if score 2:青チーム _TEAM matches 0 run scoreboard players set $core:error _ 3
execute if score 4:緑チーム _TEAM matches 2.. if score 3:黄チーム _TEAM matches 0 run scoreboard players set $core:error _ 3

## 赤チームに一人だけの場合は正常
execute if score 1:赤チーム _TEAM matches 1 if score 2:青チーム _TEAM matches 0 if score 3:黄チーム _TEAM matches 0 if score 4:緑チーム _TEAM matches 0 run scoreboard players set $core:error _ 0

## エラーメッセージ
execute if score $core:error _ matches 1 run tellraw @a {"interpret":true,"storage":"lang","nbt":"core.play.error.over"}
execute if score $core:error _ matches 2 run tellraw @a {"interpret":true,"storage":"lang","nbt":"core.play.error.less"}
execute if score $core:error _ matches 3 run tellraw @a {"interpret":true,"storage":"lang","nbt":"core.play.error.team"}

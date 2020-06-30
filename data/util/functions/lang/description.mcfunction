# 競技の説明
## プレイヤーをTP
gamemode spectator @a
spreadplayers 1059 -1346 8 32 false @a
execute as @a at @s run tp @s ~ 60 ~ facing 1059 31 -1346

## 説明する引数を設定
execute store result score $desc _ run data get storage lang temp.descNum

## 説明開始
function util:lang/read

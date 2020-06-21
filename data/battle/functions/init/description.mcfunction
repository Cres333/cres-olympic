# 競技の説明
## プレイヤーをTP
gamemode spectator @a
spreadplayers 0 0 32 8 false @a
execute as @a at @s run tp @s ~ 50 ~ facing 1059 31 -1346

## 説明する引数を設定
execute store result score $desc _ run data get storage lang battle.descNum
data modify storage lang temp.desc set from storage lang battle.desc

## 説明の呼び出し
function util:lang/description

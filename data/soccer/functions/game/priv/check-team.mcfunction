# 次のチームのチェック
## 次のチームを選択
scoreboard players add $team _ 1

## チーム情報を取得
execute if score $team _ matches 0 run data modify storage soccer now set from storage soccer battle[0]
execute if score $team _ matches 1 run data modify storage soccer now set from storage soccer battle[1]
execute if score $team _ matches 2 run data modify storage soccer now set from storage soccer battle[2]
execute if score $team _ matches 3 run data modify storage soccer now set from storage soccer battle[3]
execute if score $team _ matches 4 run data modify storage soccer now set from storage soccer battle[4]
execute if score $team _ matches 5 run data modify storage soccer now set from storage soccer battle[5]
execute if score $team _ matches 6 run data modify storage soccer now set from storage soccer battle[6]

## 次のチームがいるかチェック
execute unless data storage soccer {now:{w:empty}} run scoreboard players set $end _ 1

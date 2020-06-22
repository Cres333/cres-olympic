# 次の試合を開始できるかチェック
## 現在の値をコピー
scoreboard players operation $next _R = $now _R
scoreboard players operation $next _B = $now _B
scoreboard players operation $next _Y = $now _Y
scoreboard players operation $next _G = $now _G

## 勝ち抜き者がいない場合は +1
execute unless entity @p[team=r,predicate=util:play] run scoreboard players add $next _R 1
execute unless entity @p[team=b,predicate=util:play] run scoreboard players add $next _B 1
execute unless entity @p[team=y,predicate=util:play] run scoreboard players add $next _Y 1
execute unless entity @p[team=g,predicate=util:play] run scoreboard players add $next _G 1

## 各チームに値以上のプレイヤーがいるかチェック
execute as @a[team=r] if score @s _R >= $next _R run scoreboard players set $remain _R 1
execute as @a[team=b] if score @s _B >= $next _B run scoreboard players set $remain _B 1
execute as @a[team=y] if score @s _Y >= $next _Y run scoreboard players set $remain _Y 1
execute as @a[team=g] if score @s _G >= $next _G run scoreboard players set $remain _G 1

## すべて足す
scoreboard players set $remainTeam _ 0
scoreboard players operation $remainTeam _ += $remain _R
scoreboard players operation $remainTeam _ += $remain _B
scoreboard players operation $remainTeam _ += $remain _Y
scoreboard players operation $remainTeam _ += $remain _G

## 残存チームが2以上の場合
execute if score $remainTeam _ matches 2.. run scoreboard players set $next _ 1

## 残存チームが1以下の場合
execute if score $remainTeam _ matches ..1 run scoreboard players set $next _ 0

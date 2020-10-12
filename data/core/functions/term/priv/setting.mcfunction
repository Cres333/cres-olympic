# 表示用の設定
## 初期化
scoreboard objectives add _MEDAL dummy "各チームのメダル総数"
scoreboard objectives add _GOLD dummy "プレイヤーの金メダル数"
scoreboard objectives add _MOST dummy "MVP"
scoreboard players set $per POINT 100

## 各チームのメダル総数を算出
scoreboard players operation $r _MEDAL = $r GOLD
scoreboard players operation $r _MEDAL += $r SILVER
scoreboard players operation $r _MEDAL += $r BRONZE
scoreboard players operation $b _MEDAL = $b GOLD
scoreboard players operation $b _MEDAL += $b SILVER
scoreboard players operation $b _MEDAL += $b BRONZE
scoreboard players operation $y _MEDAL = $y GOLD
scoreboard players operation $y _MEDAL += $y SILVER
scoreboard players operation $y _MEDAL += $y BRONZE
scoreboard players operation $g _MEDAL = $g GOLD
scoreboard players operation $g _MEDAL += $g SILVER
scoreboard players operation $g _MEDAL += $g BRONZE

## 各チームのメダルポイント算出
function core:term/priv/point

## 各プレイヤーの平均ポイントを算出
execute as @e[tag=m] run scoreboard players operation @s POINT /= $per POINT
execute as @e[tag=m] run scoreboard players operation @s POINT /= @s COUNT

## 各チームの平均ポイントを算出
scoreboard players set $r POINT 0
scoreboard players set $b POINT 0
scoreboard players set $y POINT 0
scoreboard players set $g POINT 0
scoreboard players operation $r POINT += @e[tag=r] POINT
scoreboard players operation $b POINT += @e[tag=b] POINT
scoreboard players operation $y POINT += @e[tag=y] POINT
scoreboard players operation $g POINT += @e[tag=g] POINT

scoreboard players set $rn POINT 0
scoreboard players set $bn POINT 0
scoreboard players set $yn POINT 0
scoreboard players set $gn POINT 0
execute as @e[tag=r,scores={POINT=1..}] run scoreboard players add $rn POINT 1
execute as @e[tag=b,scores={POINT=1..}] run scoreboard players add $bn POINT 1
execute as @e[tag=y,scores={POINT=1..}] run scoreboard players add $yn POINT 1
execute as @e[tag=g,scores={POINT=1..}] run scoreboard players add $gn POINT 1
scoreboard players operation $r POINT /= $rn POINT
scoreboard players operation $b POINT /= $bn POINT
scoreboard players operation $y POINT /= $yn POINT
scoreboard players operation $g POINT /= $gn POINT

## 各プレイヤーにスコアを書き戻す
scoreboard players reset * SCORE
execute as @e[tag=m] run function storage:player/point

## 各プレイヤーに金メダル数を書き戻す
execute as @e[tag=m] run function storage:player/gold

## MVPを算出
### 金メダルMVP
scoreboard players set $gold _MOST 0
scoreboard players operation $gold _MOST > @a[team=!] _GOLD
execute as @a[team=!] if score $gold _MOST = @s _GOLD run scoreboard players set @s _GOLD 1
### スコアMVP
scoreboard players set $score _MOST 0
scoreboard players operation $score _MOST > @a[team=!] SCORE
execute as @a[team=!] if score $score _MOST = @s SCORE run scoreboard players set @s _MOST 1

## 関係者以外を外す
scoreboard players reset @a[team=] SCORE

## 表示用のスコアボード生成
function core:term/priv/score

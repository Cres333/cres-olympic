# ログアウトしている人を救う
## 初期化
scoreboard players set $end _TICKET 1
scoreboard players set $r _TICKET 0
scoreboard players set $b _TICKET 0
scoreboard players set $y _TICKET 0
scoreboard players set $g _TICKET 0

## 人数を計測
execute if score $teamNum _TICKET matches 1.. as @a[team=r,predicate=util:join] run scoreboard players add $r _TICKET 1
execute if score $teamNum _TICKET matches 2.. as @a[team=b,predicate=util:join] run scoreboard players add $b _TICKET 1
execute if score $teamNum _TICKET matches 3.. as @a[team=y,predicate=util:join] run scoreboard players add $y _TICKET 1
execute if score $teamNum _TICKET matches 4.. as @a[team=g,predicate=util:join] run scoreboard players add $g _TICKET 1

## 人数が揃っているかチェック
execute if score $teamNum _TICKET matches 1.. if score $r _TICKET < $num _TICKET run scoreboard players set $end _TICKET 0
execute if score $teamNum _TICKET matches 2.. if score $b _TICKET < $num _TICKET run scoreboard players set $end _TICKET 0
execute if score $teamNum _TICKET matches 3.. if score $y _TICKET < $num _TICKET run scoreboard players set $end _TICKET 0
execute if score $teamNum _TICKET matches 4.. if score $g _TICKET < $num _TICKET run scoreboard players set $end _TICKET 0

## ログアウトした人を待つ
execute if score $end _TICKET matches 0 run schedule function util:select/wait/check-last 3s

## 開始
execute if score $end _TICKET matches 1 run function util:select/return

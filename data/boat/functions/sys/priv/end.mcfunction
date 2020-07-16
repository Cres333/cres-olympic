# システム終了処理
## クリア
clear @a arrow
clear @a bow
effect clear @a

## ボートと矢を削除
kill @e[type=item]
kill @e[type=boat]
kill @e[type=arrow]

## PLAYから外す
scoreboard players reset * PLAY

## 全員リタイアしたチームは時間のマイナスを加算
scoreboard players add $time _ 1000
execute if entity @p[predicate=util:join,team=r] unless score $r SCORE matches 1.. run scoreboard players operation $r SCORE = $time _
execute if entity @p[predicate=util:join,team=b] unless score $b SCORE matches 1.. run scoreboard players operation $b SCORE = $time _
execute if entity @p[predicate=util:join,team=y] unless score $y SCORE matches 1.. run scoreboard players operation $y SCORE = $time _
execute if entity @p[predicate=util:join,team=g] unless score $g SCORE matches 1.. run scoreboard players operation $g SCORE = $time _

## ゲーム終了
function boat:game/next

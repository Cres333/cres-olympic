# 次の試合処理
## ゲームモード変更
gamemode spectator @a

## 装備削除
clear @a

## スケジュール削除
schedule clear battle:sys/priv/field/1
schedule clear battle:sys/priv/field/2
schedule clear battle:sys/priv/field/3

## PLAYとなっているプレイヤーにスコア追加
scoreboard players add @a[predicate=util:play] SCORE 10

# 次の試合を開始するかチェック
function battle:game/priv/check-next

# 次の試合がある場合
execute if score $next _ matches 1 run function battle:sys/main

# 次の試合がない場合
execute unless score $next _ matches 1 run function battle:game/end

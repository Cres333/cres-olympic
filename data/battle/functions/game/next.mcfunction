# 次の試合処理
## 次の試合を開始するかチェック
function battle:game/priv/check-next

## 次の試合がある場合
execute if score $next _ matches 1 run function battle:sys/main

## 次の試合がない場合
execute unless score $next _ matches 1 run function battle:game/end

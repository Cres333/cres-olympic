# 個人戦のメンバー選出
scoreboard players set @a[scores={ID=0..}] JOIN 1

## カウントを増やす
scoreboard players add @a[predicate=util:join] COUNT 1

## 各競技の処理に戻す
function util:select/return

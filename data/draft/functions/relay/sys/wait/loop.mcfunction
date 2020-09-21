## エフェクト処理
function relay:sys/wait/effect

## 永久ループ
execute unless score $end _ matches 1 run schedule function draft:relay/sys/wait/loop 1t

# 各waitを一括管理
function swim:sys/wait/cooldown

## 全員がゴールしたらゲーム終了
execute unless score $end _ matches 1 run schedule function draft:swim/sys/wait/loop 1t

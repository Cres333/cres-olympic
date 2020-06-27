# 開始
## ボールを中央に召喚
scoreboard players set $cornor _ 1
function soccer:sys/priv/cornor
scoreboard players reset $cornor _

## 各waitを作動
function soccer:sys/wait/loop

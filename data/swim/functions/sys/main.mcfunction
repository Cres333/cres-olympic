# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 各プレイヤーの順番を表示
title @a[predicate=swim:1] title {"interpret":true,"nbt":"swim.player[1]","storage":"lang"}
title @a[predicate=swim:2] title {"interpret":true,"nbt":"swim.player[2]","storage":"lang"}
title @a[predicate=swim:3] title {"interpret":true,"nbt":"swim.player[3]","storage":"lang"}
title @a[predicate=swim:4] title {"interpret":true,"nbt":"swim.player[4]","storage":"lang"}

## カウントダウン開始
function util:count/start

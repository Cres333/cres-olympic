# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 第ｎ走者か表示
title @a[predicate=relay:1] title {"interpret":true,"nbt":"relay.player[1]","storage":"lang"}
title @a[predicate=relay:2] title {"interpret":true,"nbt":"relay.player[2]","storage":"lang"}
title @a[predicate=relay:3] title {"interpret":true,"nbt":"relay.player[3]","storage":"lang"}
title @a[predicate=relay:4] title {"interpret":true,"nbt":"relay.player[4]","storage":"lang"}

## カウントダウン開始
function util:count/start

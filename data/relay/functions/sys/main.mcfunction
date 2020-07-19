# ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 光らせる
effect give @a[predicate=util:join] glowing 1000000 0 true

## 第ｎ走者か表示
title @a times 10 80 10
title @a[predicate=relay:1] title {"interpret":true,"nbt":"relay.player[1]","storage":"lang"}
title @a[predicate=relay:2] title {"interpret":true,"nbt":"relay.player[2]","storage":"lang"}
title @a[predicate=relay:3] title {"interpret":true,"nbt":"relay.player[3]","storage":"lang"}
title @a[predicate=relay:4] title {"interpret":true,"nbt":"relay.player[4]","storage":"lang"}

## 選手にユニフォームを着せる
function util:wear/equip

## カウントダウン開始
schedule function util:count/start 5s

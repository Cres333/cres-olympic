# 各場所に配置
## ゲームモード変更
gamemode adventure @a[predicate=util:join]

## ポジション移動
spreadplayers 1053 -1352 1 2 false @a[team=r,predicate=util:join]
spreadplayers 1065 -1340 1 2 false @a[team=b,predicate=util:join]
spreadplayers 1053 -1340 2 2 false @a[team=y,predicate=util:join]
spreadplayers 1065 -1352 2 2 false @a[team=g,predicate=util:join]

## 中央を向かせる
execute as @a[predicate=util:join] at @s run tp @s ~ 35 ~ facing 1059 35 -1346

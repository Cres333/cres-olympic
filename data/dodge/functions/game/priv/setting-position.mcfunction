# 各場所に配置
## ゲームモード変更
gamemode adventure @a[predicate=util:join]

## TODO: TP座標
spreadplayers 0 0 2 2 false @a[team=r,predicate=util:join]
spreadplayers 0 0 2 2 false @a[team=b,predicate=util:join]
spreadplayers 0 0 2 2 false @a[team=y,predicate=util:join]
spreadplayers 0 0 2 2 false @a[team=g,predicate=util:join]

## 中央を向かせる
execute as @a[predicate=util:join] at @s run tp @s ~ 0 ~ facing 0 0 0
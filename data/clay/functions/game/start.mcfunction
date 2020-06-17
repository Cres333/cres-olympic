# ゲーム開始
## 念の為、PLAYから除外
scoreboard players reset * PLAY

## 1回目を設定
scoreboard players set $round _ 1

## 背番号を設定
function clay:game/priv/setting-number

## TODO: 観覧プレイヤーを配置
gamemode spectator @a[predicate=!util:join]

## ゲーム開始
function clay:sys/main

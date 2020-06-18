# ゲーム開始
## 背番号の割当
function relay:game/priv/setting-number

## 各場所に配置
function relay:game/priv/setting-position

## TODO: 観覧プレイヤーを配置
gamemode spectator @a[predicate=!util:join]

## ゲーム開始
function relay:sys/main

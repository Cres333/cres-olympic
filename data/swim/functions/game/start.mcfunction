# ゲーム開始
## 背番号の割当
function swim:game/priv/setting-number

## 各場所に配置
function swim:game/priv/setting-position

## TODO: 観覧プレイヤーを配置
gamemode spectator @a[predicate=!util:play]

## ゲーム開始
function swim:sys/main

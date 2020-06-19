# ゲーム開始
## 背番号の割当
function dodge:game/priv/setting-number

## 各場所に配置
function dodge:game/priv/setting-position

## TODO: 観覧プレイヤーを配置
gamemode spectator @a[predicate=!util:join]

## ゲーム開始
function dodge:sys/main

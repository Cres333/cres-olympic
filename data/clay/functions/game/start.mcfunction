# ゲーム開始
## 背番号を設定
function clay:game/priv/setting-number

## TODO: 観覧プレイヤーを配置
gamemode spectator @a[predicate=!util:join]

## ゲーム開始
function clay:sys/main

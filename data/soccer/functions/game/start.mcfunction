# ゲームの開始処理
## チームを編成
function soccer:game/priv/generate-team

## チームを選択
function soccer:game/priv/select-team

## 各場所に配置
function soccer:game/priv/setting-position

## TODO: 観覧プレイヤーを配置
gamemode spectator @a[predicate=!util:play]

## ゲーム開始
function soccer:sys/main

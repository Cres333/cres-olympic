# ゲームの開始処理
## 初期化
scoreboard players set $team _ 0

## チームを編成
function soccer:game/priv/generate-team

## チームを選択
function soccer:game/priv/select-team

## 各場所に配置
function soccer:game/priv/setting-position

## ゲーム開始
function soccer:sys/main

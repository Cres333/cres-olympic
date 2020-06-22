# ゲームの機構
## 初期化
scoreboard players reset * _DEATH
scoreboard players reset * _LOG
scoreboard players set $end _ 0

## フィールドリセット
function battle:sys/priv/field/reset

## プレイヤー選択
function battle:sys/priv/select-player

## プレイヤーを配置
function battle:sys/priv/setting-position

## カウントダウン開始
scoreboard players set $count _ 5
function battle:sys/priv/count

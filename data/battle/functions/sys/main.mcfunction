# ゲームの機構
## プレイヤー選択
function battle:sys/priv/select-player

## プレイヤーを配置
function battle:sys/priv/setting-position

## カウントダウン開始
scoreboard players set $count _ 5
function battle:sys/priv/count

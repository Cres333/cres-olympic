# ゲームの機構
## 初期化
scoreboard players set @a[predicate=util:join] PLAY 1

## カウントダウン開始
scoreboard players set $count _ 5
function dodge:sys/priv/count

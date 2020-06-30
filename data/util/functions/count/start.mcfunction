# カウントダウン開始
## 初期化
scoreboard players set $util:count _ 6

## カウントダウン
schedule function util:count/loop 3s

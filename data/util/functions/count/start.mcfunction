# カウントダウン開始
## 初期化
scoreboard players set $util:count _ 5

## カウントダウン
schedule function util:count/loop 3s

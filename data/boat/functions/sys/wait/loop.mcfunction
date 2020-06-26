# ループ処理
## TODO: 特定のポイントを通ると特殊な矢をゲット(持ってなかったら)
## TODO: ボートから降りたら脱落
## TODO: 先にゴールした人からポイント

## 全員がゴールしたらゲーム終了
execute if score $end _ matches 0 run schedule function boat:sys/wait/loop 1t
execute if score $end _ matches 1 run function boat:sys/priv/end

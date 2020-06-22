# 残留エフェクト出現
## ランダムエフェクト召喚
## TODO: 召喚座標
execute positioned 0 0 0 run function battle:sys/priv/effect

## 6秒ごとに付与
schedule function battle:sys/wait/effect 6s

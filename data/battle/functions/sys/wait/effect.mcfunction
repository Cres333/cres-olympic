# 残留エフェクト出現
## ランダムエフェクト召喚
execute positioned 1059 42 -1346 run function battle:sys/priv/effect

## 6秒ごとに付与
schedule function battle:sys/wait/effect 6s

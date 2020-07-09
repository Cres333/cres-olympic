# 結果表示
## 個人戦の場合位、nメダルを獲得しましたを各プレイヤーに表示
tellraw @a[scores={_MEDAL=1}] {"interpret":true,"storage":"lang","nbt":"util.score.gold"}
tellraw @a[scores={_MEDAL=2}] {"interpret":true,"storage":"lang","nbt":"util.score.silver"}
tellraw @a[scores={_MEDAL=3}] {"interpret":true,"storage":"lang","nbt":"util.score.bronze"}

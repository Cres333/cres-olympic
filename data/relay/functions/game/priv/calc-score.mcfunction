# 各プレイヤーのポイントを再計算
## 赤チーム
scoreboard players operation @p[scores={_R=4}] SCORE -= @p[scores={_R=3}] SCORE
scoreboard players operation @p[scores={_R=3}] SCORE -= @p[scores={_R=2}] SCORE
scoreboard players operation @p[scores={_R=2}] SCORE -= @p[scores={_R=1}] SCORE

## 青チーム
scoreboard players operation @p[scores={_B=4}] SCORE -= @p[scores={_B=3}] SCORE
scoreboard players operation @p[scores={_B=3}] SCORE -= @p[scores={_B=2}] SCORE
scoreboard players operation @p[scores={_B=2}] SCORE -= @p[scores={_B=1}] SCORE

## 黄チーム
scoreboard players operation @p[scores={_Y=4}] SCORE -= @p[scores={_Y=3}] SCORE
scoreboard players operation @p[scores={_Y=3}] SCORE -= @p[scores={_Y=2}] SCORE
scoreboard players operation @p[scores={_Y=2}] SCORE -= @p[scores={_Y=1}] SCORE

## 緑チーム
scoreboard players operation @p[scores={_G=4}] SCORE -= @p[scores={_G=3}] SCORE
scoreboard players operation @p[scores={_G=3}] SCORE -= @p[scores={_G=2}] SCORE
scoreboard players operation @p[scores={_G=2}] SCORE -= @p[scores={_G=1}] SCORE

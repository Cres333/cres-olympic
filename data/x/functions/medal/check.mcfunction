# 最高得点の点数を取得
scoreboard players operation $max SCORE > @a SCORE

# 最高得点のプレイヤーにメダルを与える
execute as @a[scores={SCORE=0..}] if score @s SCORE = $max SCORE run scoreboard players set @s _MEDAL 1

# メダルを獲得したプレイヤーをSCOREから消す
execute as @a[scores={_MEDAL=1}] run scoreboard players reset @s SCORE

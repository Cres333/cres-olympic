# 表示用のスコアボードを用意
## チームに追加
team join r 赤チーム
team join b 青チーム
team join y 黄チーム
team join g 緑チーム

## 総メダル獲得数
scoreboard objectives add _SHOW_MEDAL dummy {"color":"light_purple","bold":true,"translate":"⇚ %s ⇛","with":[{"text":"合計メダル獲得数","color":"gold"}]}
scoreboard players operation 赤チーム _SHOW_MEDAL = $r _MEDAL
scoreboard players operation 青チーム _SHOW_MEDAL = $b _MEDAL
scoreboard players operation 黄チーム _SHOW_MEDAL = $y _MEDAL
scoreboard players operation 緑チーム _SHOW_MEDAL = $g _MEDAL

## チームポイント
scoreboard objectives add _SHOW_POINT dummy {"color":"light_purple","bold":true,"translate":"⇚ %s ⇛","with":[{"text":"チーム平均ポイント","color":"gold"}]}
scoreboard players operation 赤チーム _SHOW_POINT = $r POINT
scoreboard players operation 青チーム _SHOW_POINT = $b POINT
scoreboard players operation 黄チーム _SHOW_POINT = $y POINT
scoreboard players operation 緑チーム _SHOW_POINT = $g POINT

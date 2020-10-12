# 各チームのメダルポイントを算出
## メダルポイント
scoreboard players set $rp _MEDAL 0
scoreboard players set $bp _MEDAL 0
scoreboard players set $yp _MEDAL 0
scoreboard players set $gp _MEDAL 0

## メダル基礎ポイント
scoreboard players set $rg _MEDAL 1000
scoreboard players set $bg _MEDAL 1000
scoreboard players set $yg _MEDAL 1000
scoreboard players set $gg _MEDAL 1000
scoreboard players set $rs _MEDAL 500
scoreboard players set $bs _MEDAL 500
scoreboard players set $ys _MEDAL 500
scoreboard players set $gs _MEDAL 500
scoreboard players set $rb _MEDAL 250
scoreboard players set $bb _MEDAL 250
scoreboard players set $yb _MEDAL 250
scoreboard players set $gb _MEDAL 250

## 基礎ポイント x メダル数
scoreboard players operation $rg _MEDAL *= $r GOLD
scoreboard players operation $rs _MEDAL *= $r SILVER
scoreboard players operation $rb _MEDAL *= $r BRONZE
scoreboard players operation $bg _MEDAL *= $b GOLD
scoreboard players operation $bs _MEDAL *= $b SILVER
scoreboard players operation $bb _MEDAL *= $b BRONZE
scoreboard players operation $yg _MEDAL *= $y GOLD
scoreboard players operation $ys _MEDAL *= $y SILVER
scoreboard players operation $yb _MEDAL *= $y BRONZE
scoreboard players operation $gg _MEDAL *= $g GOLD
scoreboard players operation $gs _MEDAL *= $g SILVER
scoreboard players operation $gb _MEDAL *= $g BRONZE

## メダルポイント合計
scoreboard players operation $rp _MEDAL += $rg _MEDAL
scoreboard players operation $rp _MEDAL += $rs _MEDAL
scoreboard players operation $rp _MEDAL += $rb _MEDAL
scoreboard players operation $bp _MEDAL += $bg _MEDAL
scoreboard players operation $bp _MEDAL += $bs _MEDAL
scoreboard players operation $bp _MEDAL += $bb _MEDAL
scoreboard players operation $yp _MEDAL += $yg _MEDAL
scoreboard players operation $yp _MEDAL += $ys _MEDAL
scoreboard players operation $yp _MEDAL += $yb _MEDAL
scoreboard players operation $gp _MEDAL += $gg _MEDAL
scoreboard players operation $gp _MEDAL += $gs _MEDAL
scoreboard players operation $gp _MEDAL += $gb _MEDAL

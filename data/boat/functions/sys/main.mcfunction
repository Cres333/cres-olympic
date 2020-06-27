# TODO: ゲームの機構
## 初期化
scoreboard players set $end _ 0

## 選手をTPする
function boat:sys/priv/setting-position

## ボートを用意する
## 召喚座標
execute if entity @p[scores={_ID=1}] run summon boat 0 0 0
execute if entity @p[scores={_ID=2}] run summon boat 0 0 0
execute if entity @p[scores={_ID=3}] run summon boat 0 0 0
execute if entity @p[scores={_ID=4}] run summon boat 0 0 0
execute if entity @p[scores={_ID=5}] run summon boat 0 0 0
execute if entity @p[scores={_ID=6}] run summon boat 0 0 0
execute if entity @p[scores={_ID=7}] run summon boat 0 0 0
execute if entity @p[scores={_ID=8}] run summon boat 0 0 0

## カウントダウン開始
function boat:sys/priv/count

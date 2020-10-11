# ゲーム開始
## 背番号の割当
function battle:game/priv/setting-number

## 基礎点を付加
scoreboard players set @a[predicate=util:join] SCORE 10

## 現在のプレイヤーID
scoreboard players set $now _R 0
scoreboard players set $now _B 0
scoreboard players set $now _Y 0
scoreboard players set $now _G 0

## ゲーム開始
function battle:sys/main

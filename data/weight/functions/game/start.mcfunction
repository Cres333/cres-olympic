# ゲーム開始
## 初期化
scoreboard players set $round _ 0

## 背番号を設定
function weight:game/priv/setting-number

# 参加者全員をPLAY=1にする
scoreboard players set @a[predicate=util:join] PLAY 1

# 参加者全員をLIFE=50にする
scoreboard players set @a[predicate=util:play] _LIFE 50

## プレイヤーTP
function util:spectator/tp

## 選手を選ぶ
function weight:game/next

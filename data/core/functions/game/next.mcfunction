# 次の競技を選択
## 初期化
function util:term/reset-common
scoreboard objectives add _NEXT dummy
scoreboard players set $game _NEXT 0
scoreboard players set $load _NEXT 0

## 満腹度回復
effect give @a saturation 1 255 true

## 先頭の競技を取得する
function core:game/priv/get

## メッセージ
execute unless score $game _NEXT matches 0 run title @a actionbar {"text":"30 秒後に次の競技を開始します","bold":true}
execute if score $game _NEXT matches 0 run title @a actionbar {"text":"30 秒後に競技を終了します","bold":true}
schedule function core:game/priv/message 5s

## 競技に合わせて呼び出す
schedule function core:game/priv/call 30s

## 競技がなかったら終了
execute if score $game _NEXT matches 0 run schedule function core:term/start 30s

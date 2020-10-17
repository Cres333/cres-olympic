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
execute unless score $game _NEXT matches 0 run title @a actionbar {"text":"次の競技までしばらくお待ちください","bold":true}
execute if score $game _NEXT matches 0 run title @a actionbar {"text":"結果発表までしばらくお待ちください","bold":true}
schedule function core:game/priv/message 5s

## 競技に合わせて呼び出す
execute unless data storage play {loading:long} run schedule function core:game/priv/call 15s
execute if data storage play {loading:long} run schedule function core:game/priv/call 30s

# メンバー選出
## 初期化
scoreboard players reset * JOIN
scoreboard objectives add _TICKET dummy
scoreboard players set $team _TICKET 0
scoreboard players set $teamSum _TICKET 0
execute store result score $teamNum _TICKET run data get storage main teamNum
execute store result score $num _TICKET run data get storage main join
scoreboard players set $r _TICKET 0
scoreboard players set $b _TICKET 0
scoreboard players set $y _TICKET 0
scoreboard players set $g _TICKET 0

## 全員をTPさせる
gamemode adventure @a[team=!]
tp @a[team=r] 1004 31 -1468 90 0
tp @a[team=b] 1114 31 -1224 -90 0
tp @a[team=y] 1131 31 -1451 180 0
tp @a[team=g] 987 31 -1241 0 0

## 全員にTicketを渡す
give @a[team=!] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}
tellraw @a[team=!] {"translate":"[システム] 次の競技に参加する方は、参加券を捨ててください。"}
tellraw @a[team=!] {"translate":"[システム] 参加可能人数は、%s 人です。","with":[{"interpret":true,"nbt":"join","storage":"main"}]}

## ライトが光るまで待つ
function util:select/wait/light

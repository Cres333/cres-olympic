schedule clear draft:sky/sys/wait/loop

## 説明用のスケジュールを消す
scoreboard players set $temp _ 0
schedule clear sky:sys/wait/descirption
kill @e[tag=color]

## スコアボード破棄
scoreboard objectives remove _COLOR
scoreboard objectives remove _SHOW

## チームから外す
team leave 赤チーム
team leave 青チーム
team leave 黄チーム
team leave 緑チーム

## 次のゲーム
function draft:game/next

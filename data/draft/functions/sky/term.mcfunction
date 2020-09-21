schedule clear draft:sky/sys/wait/loop

## スコアボード破棄
scoreboard objectives remove _USE
scoreboard objectives remove _COOL
scoreboard objectives remove _COLOR
scoreboard objectives remove _SHOW

## チームから外す
team leave 赤チーム
team leave 青チーム
team leave 黄チーム
team leave 緑チーム

## 時間変更
time set 6000

## 次のゲーム
function draft:game/next

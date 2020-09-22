## 初期化
function storage:settings/game
function storage:settings/score
function storage:settings/id
function core:init/score
function core:init/teams

## 念の為、破棄
schedule clear core:term/wait/gamemode
scoreboard objectives remove _MEDAL
scoreboard objectives remove _GOLD
scoreboard objectives remove _MOST
scoreboard objectives remove _SHOW_MEDAL
scoreboard objectives remove _SHOW_POINT

## TP
gamemode adventure @a
tp @a 1085 32 -1346 90 0

## チーム分けの台を用意する
clone 7 1 37 29 5 59 1048 32 -1357

## それぞれの人数表示用のスコアボードを用意する
scoreboard objectives add _TEAM dummy ":: チーム参加人数 ::"
scoreboard objectives setdisplay sidebar _TEAM

## チーム分け完了本を渡す
give @s written_book{title:"チーム分け",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"core.book.play.ready"}']}

## チーム表示
team join r 赤チーム
team join b 青チーム
team join y 黄チーム
team join g 緑チーム

## チーム人数を変動させる
function core:play/wait/team

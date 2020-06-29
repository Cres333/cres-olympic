## チーム分けの台を用意する
clone 7 1 37 29 5 59 1048 32 -1357

## それぞれの人数表示用のスコアボードを用意する
scoreboard objectives add _TEAM dummy ":: チーム参加人数 ::"

## チーム分け完了用の看板を用意する
setblock 1048 32 -1348 birch_sign{Color:"black",Text2:'{"text":"チーム分け完了","clickEvent":{"action": "run_command","value": "/function core:play/finish"}}'}

## キャンセル用の看板を用意する
setblock 1048 32 -1344 birch_sign{Color:"black",Text2:'{"text":"チーム分け完了","clickEvent":{"action": "run_command","value": "/function core:play/cancel"}}'}

## チーム人数を変動させる
function core:play/wait/team

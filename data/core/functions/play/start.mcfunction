## チーム分けの台を用意する
## TODO: フィールド座標
clone 0 0 0 0 0 0 0 0 0

## それぞれの人数表示用のスコアボードを用意する
scoreboard objectives add _TEAM dummy ":: チーム参加人数 ::"

## チーム分け完了用の看板を用意する
## TODO: 座標
setblock 0 0 0 birch_sign{Color:"black",Text2:'{"text":"チーム分け完了","clickEvent":{"action": "run_command","value": "/function core:play/finish"}}'}

## キャンセル用の看板を用意する
## TODO: 座標
setblock 0 0 0 birch_sign{Color:"black",Text2:'{"text":"チーム分け完了","clickEvent":{"action": "run_command","value": "/function core:play/cancel"}}'}

## チーム人数を変動させる
function core:play/wait/team

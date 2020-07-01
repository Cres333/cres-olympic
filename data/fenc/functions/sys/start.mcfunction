# システム開始処理
## 脱落者がいなかったらゲーム開始
schedule clear fenc:sys/wait/count
scoreboard players reset * _DAMAGE
function fenc:sys/wait/loop

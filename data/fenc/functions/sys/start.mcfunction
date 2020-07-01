# システム開始処理
## 脱落者がいなかったらゲーム開始
schedule clear fenc:sys/wait/count
scoreboard players set @a[predicate=util:play] _DAMAGE 0
function fenc:sys/wait/loop

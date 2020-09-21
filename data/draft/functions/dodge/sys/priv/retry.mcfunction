# 再開
advancement revoke @a[predicate=util:join,gamemode=spectator] only event:dodge/out
scoreboard players set @a[predicate=util:join,gamemode=spectator] PLAY 1
spreadplayers 1059 -1346 3 10 false @a[predicate=util:play,gamemode=spectator]
gamemode adventure @a[predicate=util:play,gamemode=spectator]

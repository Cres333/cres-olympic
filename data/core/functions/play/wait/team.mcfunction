# チーム情報を変動
## チーム参加
team join r @a[predicate=core:team/red]
team join b @a[predicate=core:team/blue]
team join y @a[predicate=core:team/yellow]
team join g @a[predicate=core:team/green]
team leave @a[predicate=core:team/gray]

## チーム人数計算
scoreboard players set 1:赤チーム _TEAM 0
scoreboard players set 2:青チーム _TEAM 0
scoreboard players set 3:黄チーム _TEAM 0
scoreboard players set 4:緑チーム _TEAM 0

execute as @a[team=r] run scoreboard players add 1:赤チーム _TEAM 1
execute as @a[team=b] run scoreboard players add 2:青チーム _TEAM 1
execute as @a[team=y] run scoreboard players add 3:黄チーム _TEAM 1
execute as @a[team=g] run scoreboard players add 4:緑チーム _TEAM 1

## ループ処理
schedule function core:play/wait/team 10t

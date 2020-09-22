# チーム情報を変動
## チーム参加
team join r @a[predicate=core:team/red]
team join b @a[predicate=core:team/blue]
team join y @a[predicate=core:team/yellow]
team join g @a[predicate=core:team/green]
team leave @a[predicate=core:team/gray]

## チーム人数計算
scoreboard players set 赤チーム _TEAM 0
scoreboard players set 青チーム _TEAM 0
scoreboard players set 黄チーム _TEAM 0
scoreboard players set 緑チーム _TEAM 0

execute as @a[team=r] run scoreboard players add 赤チーム _TEAM 1
execute as @a[team=b] run scoreboard players add 青チーム _TEAM 1
execute as @a[team=y] run scoreboard players add 黄チーム _TEAM 1
execute as @a[team=g] run scoreboard players add 緑チーム _TEAM 1

## ループ処理
schedule function core:play/wait/team 5t

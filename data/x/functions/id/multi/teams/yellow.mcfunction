# スコアボードリセット
scoreboard players set $selectY _ 0

# ライトが光ったら参加者チェック
execute if predicate x:light/yellow as @a[team=y,predicate=x:ticket] run scoreboard players add $selectY _ 1

# 参加人数が揃っていたら終了
execute if score $selectY _ >= $selectNum _ as @p[team=y,predicate=x:ticket] run function x:id/multi/common
execute if score $selectY _ >= $selectNum _ run function x:id/multi/end
execute if score $selectY _ >= $selectNum _ if predicate x:light/yellow run tellraw @a[team=y] {"text":"[システム] 参加者を決定しました。"}

# 参加人数が揃っていなかったら、ループ
execute unless score $selectY _ >= $selectNum _ run schedule function x:id/multi/teams/yellow 5t
execute unless score $selectY _ >= $selectNum _ if predicate x:light/yellow run tellraw @a[team=y] {"text":"[システム] 参加者が足りていません。"}

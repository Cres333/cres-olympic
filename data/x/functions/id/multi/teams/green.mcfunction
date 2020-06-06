# スコアボードリセット
scoreboard players set $selectG _ 0

# ライトが光ったら参加者チェック
execute if predicate x:light/green as @a[team=g,predicate=x:ticket] run scoreboard players add $selectG _ 1

# 参加人数が揃っていたら終了
execute if score $selectG _ >= $selectNum _ as @p[team=g,predicate=x:ticket] run function x:id/multi/common
execute if score $selectG _ >= $selectNum _ run function x:id/multi/end
execute if score $selectG _ >= $selectNum _ if predicate x:light/green run tellraw @a[team=g] {"text":"[システム] 参加者を決定しました。"}

# 参加人数が揃っていなかったら、ループ
execute unless score $selectG _ >= $selectNum _ run schedule function x:id/multi/teams/green 5t
execute unless score $selectG _ >= $selectNum _ if predicate x:light/green run tellraw @a[team=g] {"text":"[システム] 参加者が足りていません。"}

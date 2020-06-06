# スコアボードリセット
scoreboard players set $selectB _ 0

# ライトが光ったら参加者チェック
execute if predicate x:light/blue as @a[team=b,predicate=x:ticket] run scoreboard players add $selectB _ 1

# 参加人数が揃っていたら終了
execute if score $selectB _ >= $selectNum _ as @p[team=b,predicate=x:ticket] run function x:id/multi/common
execute if score $selectB _ >= $selectNum _ run function x:id/multi/end
execute if score $selectB _ >= $selectNum _ if predicate x:light/blue run tellraw @a[team=b] {"text":"[システム] 参加者を決定しました。"}

# 参加人数が揃っていなかったら、ループ
execute unless score $selectB _ >= $selectNum _ run schedule function x:id/multi/teams/blue 5t
execute unless score $selectB _ >= $selectNum _ if predicate x:light/blue run tellraw @a[team=b] {"text":"[システム] 参加者が足りていません。"}

# スコアボードリセット
scoreboard players set $selectR _ 0

# ライトが光ったら参加者チェック
execute if predicate x:light/red as @a[team=r,predicate=x:ticket] run scoreboard players add $selectR _ 1

# 参加人数が揃っていたら終了
execute if score $selectR _ >= $selectNum _ as @p[team=r,predicate=x:ticket] run function x:id/multi/common
execute if score $selectR _ >= $selectNum _ run function x:id/multi/end
execute if score $selectR _ >= $selectNum _ if predicate x:light/red run tellraw @a[team=r] {"text":"[システム] 参加者を決定しました。"}

# 参加人数が揃っていなかったら、ループ
execute unless score $selectR _ >= $selectNum _ run schedule function x:id/multi/teams/red 5t
execute unless score $selectR _ >= $selectNum _ if predicate x:light/red run tellraw @a[team=r] {"text":"[システム] 参加者が足りていません。"}

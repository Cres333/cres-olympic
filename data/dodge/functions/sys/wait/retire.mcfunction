# 脱落検知
## 爆発に巻き込まれたプレイヤーを検知
execute unless entity @e[type=fireball] at @e[tag=ball] as @a[predicate=util:play,distance=..2] at @s run function dodge:sys/priv/out

## TODO: チームメンバーが残っているかチェック
## TODO: チームメンバーが残っていないエリアを開放

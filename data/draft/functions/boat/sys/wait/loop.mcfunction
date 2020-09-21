# ループ処理
## ゲームモード変更されたらplayを消す
scoreboard players set @a[predicate=util:play,gamemode=spectator] PLAY 0

## ボートから降りたら近くのボートをTP
execute as @a[predicate=boat:ride] at @s run function boat:sys/priv/out

## 壁を消す
execute as @a[predicate=util:play] at @s if block ~ 35 ~ gold_block unless block 1109 36 -1346 air run fill 1109 36 -1346 1091 38 -1346 air

## ループ
execute if score $end _ matches 0 run schedule function draft:boat/sys/wait/loop 1t

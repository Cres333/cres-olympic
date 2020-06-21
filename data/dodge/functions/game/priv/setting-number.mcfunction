# 背番号の割当
## 初期化
scoreboard players set @a[team=r,predicate=util:join] _R 0
scoreboard players set @a[team=b,predicate=util:join] _B 0
scoreboard players set @a[team=y,predicate=util:join] _Y 0
scoreboard players set @a[team=g,predicate=util:join] _G 0

## 赤チーム
scoreboard players set @r[limit=1,scores={_R=0}] _R 1
scoreboard players set @r[limit=1,scores={_R=0}] _R 2
scoreboard players set @r[limit=1,scores={_R=0}] _R 3

## 青チーム
scoreboard players set @r[limit=1,scores={_B=0}] _B 1
scoreboard players set @r[limit=1,scores={_B=0}] _B 2
scoreboard players set @r[limit=1,scores={_B=0}] _B 3

## 黄チーム
scoreboard players set @r[limit=1,scores={_Y=0}] _Y 1
scoreboard players set @r[limit=1,scores={_Y=0}] _Y 2
scoreboard players set @r[limit=1,scores={_Y=0}] _Y 3

## 緑チーム
scoreboard players set @r[limit=1,scores={_G=0}] _G 1
scoreboard players set @r[limit=1,scores={_G=0}] _G 2
scoreboard players set @r[limit=1,scores={_G=0}] _G 3

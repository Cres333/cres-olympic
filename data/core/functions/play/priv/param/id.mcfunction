# ID割当
## ユニークなIDを割り当て
scoreboard players reset * ID
scoreboard players set @a[team=!] ID 0

## 赤チーム
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 101
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 102
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 103
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 104
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 105
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 106
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 107
scoreboard players set @r[limit=1,team=r,scores={ID=0}] ID 108

## 青チーム
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 201
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 202
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 203
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 204
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 205
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 206
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 207
scoreboard players set @r[limit=1,team=b,scores={ID=0}] ID 208

## 黄チーム
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 301
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 302
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 303
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 304
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 305
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 306
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 307
scoreboard players set @r[limit=1,team=y,scores={ID=0}] ID 308

## 緑チーム
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 401
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 402
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 403
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 404
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 405
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 406
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 407
scoreboard players set @r[limit=1,team=g,scores={ID=0}] ID 408

## IDのあるプレイヤーだけをチームに再追加
team empty r
team empty b
team empty y
team empty g

team join r @a[scores={ID=100..199}]
team join b @a[scores={ID=200..299}]
team join y @a[scores={ID=300..399}]
team join g @a[scores={ID=400..499}]

## 競技参加数を0にする
scoreboard players set @a[scores={ID=100..499}] COUNT 0

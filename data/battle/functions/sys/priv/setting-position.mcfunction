# プレイヤーのポジション配置
## ゲームモード変更
gamemode adventure @a[predicate=util:play]

## TP座標
tp @p[team=r,predicate=util:play] 1073 41 -1346 90 0
tp @p[team=b,predicate=util:play] 1045 41 -1346 -90 0
tp @p[team=y,predicate=util:play] 1059 41 -1332 180 0
tp @p[team=g,predicate=util:play] 1059 41 -1360 0 0

## 剣を渡す
give @a[predicate=util:play] diamond_sword{Enchantments:[{id:"minecraft:knockback",lvl:2}]}

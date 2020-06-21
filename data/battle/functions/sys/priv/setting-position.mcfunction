# プレイヤーのポジション配置
## ゲームモード変更
gamemode adventure @a[predicate=util:play]

## TP座標
tp @p[team=r,predicate=util:play] 0 0 0 0 0
tp @p[team=b,predicate=util:play] 0 0 0 0 0
tp @p[team=y,predicate=util:play] 0 0 0 0 0
tp @p[team=g,predicate=util:play] 0 0 0 0 0

## 剣を渡す
## TODO: ノックバック追加
give @a[predicate=util:play] diamond_sword

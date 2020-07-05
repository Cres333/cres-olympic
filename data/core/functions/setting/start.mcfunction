# 箱を閉じた
## 箱の中身をストレージに入れる
## TODO: 座標
data remove storage play games
data modify storage play games append from block 0 0 0 Items[{Slot:9b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:10b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:11b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:12b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:13b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:14b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:15b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:16b}].tag.game
data modify storage play games append from block 0 0 0 Items[{Slot:17b}].tag.game

## 手持ちを削除する
clear @a #core:setting-item{tag:{settingItem:true}}

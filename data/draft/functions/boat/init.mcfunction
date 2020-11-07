## ゲームモード設定
data merge storage main {game:boat}

## フィールド生成
clone 0 63 0 51 70 49 1008 32 -1445 masked normal
clone 0 74 0 21 82 100 1008 32 -1396 masked normal
clone 0 87 0 51 93 49 1008 32 -1296 masked normal
clone 0 97 0 51 104 49 1059 32 -1445 masked normal
clone 0 107 0 21 115 100 1089 32 -1396 masked normal
clone 0 117 0 51 123 49 1059 32 -1296 masked normal

## 説明の呼び出し
data modify storage lang temp merge from storage lang boat
function util:lang/description

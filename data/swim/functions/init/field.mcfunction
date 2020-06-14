# フィールド設定
# TODO: フィールド関係座標
## フィールドを読み込み
forceload add 0 0 0 0

## 各レーンをクローン
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0
clone 0 0 0 0 0 0 0 0 0

## フィールドの読み込みを解除
forceload remove 0 0 0 0

## Next: ゲーム説明
function swim:init/description

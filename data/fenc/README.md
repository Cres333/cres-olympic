# フェンシング

## Storage設定
main {game:fenc,join:2,team:false}

## 全体の流れ
### 初期化
function fenc:init/init
### フィールド生成
function fenc:init/field
### ゲーム説明
function fenc:init/description
### メンバー選出
function fenc:init/select-member
### ゲーム開始
function fenc:game/start
### 次の選手
function fenc:game/next
### スコア/メダル計算
function fenc:term/score
### 終了
function fenc:term/term

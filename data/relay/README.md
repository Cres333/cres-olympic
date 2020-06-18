# リレー

## Storage設定
main {game:relay,join:4,team:true}

## 全体の流れ
### 初期化
function relay:init/init
### フィールド生成
function relay:init/field
### ゲーム説明
function relay:init/description
### メンバー選出
function relay:init/select-member
### ゲーム開始
function relay:game/start
### スコア/メダル計算
function relay:term/score
### 終了
function relay:term/term

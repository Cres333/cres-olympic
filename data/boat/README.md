# ボート

## Storage設定
main {game:boat,join:2,team:false}

## 全体の流れ
### 初期化
function boat:init/init
### フィールド生成
function boat:init/field
### ゲーム説明
function boat:init/description
### メンバー選出
function boat:init/select-member
### ゲーム開始
function boat:game/start
### 次の選手
function boat:game/next
### スコア/メダル計算
function boat:term/score
### 終了
function boat:term/term

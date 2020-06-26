# ウェイトリフティング

## Storage設定
main {game:weight,join:2,team:false}

## 全体の流れ
### 初期化
function weight:init/init
### フィールド生成
function weight:init/field
### ゲーム説明
function weight:init/description
### メンバー選出
function weight:init/select-member
### ゲーム開始
function weight:game/start
### 次の選手
function weight:game/next
### スコア/メダル計算
function weight:term/score
### 終了
function weight:term/term

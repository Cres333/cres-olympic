# ドッヂボール

## Storage設定
main {game:dodge,join:3,team:true}

## 全体の流れ
### 初期化
function dodge:init/init
### フィールド生成
function dodge:init/field
### ゲーム説明
function dodge:init/description
### メンバー選出
function dodge:init/select-member
### ゲーム開始
function dodge:game/start
### スコア/メダル計算
function dodge:term/score
### 終了
function dodge:term/term

# 水泳

## Storage設定
main {game:swim,join:4,team:true}

## 全体の流れ
### 初期化
function swim:init/init
### フィールド生成
function swim:init/field
### ゲーム説明
function swim:init/description
### メンバー選出
function swim:init/select-member
### ゲーム開始
function swim:game/start
### スコア/メダル計算
function swim:term/score
### 終了
function swim:term/term

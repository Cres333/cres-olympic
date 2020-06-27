# クレー射撃

## Storage設定
main {game:clay,join:2,team:false,score:point}

## 全体の流れ
### 初期化
function clay:init/init
### フィールド生成
function clay:init/field
### ゲーム説明
function clay:init/description
### メンバー選出
function clay:init/select-member
### ゲーム開始
function clay:game/start
### 次の選手
function clay:game/next
### スコア/メダル計算
function clay:term/score
### 終了
function clay:term/term

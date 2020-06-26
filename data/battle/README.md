# 勝ち抜き戦

## Storage設定
main {game:battle,join:3,team:true}

## 全体の流れ
### 初期化
function battle:init/init
### フィールド生成
function battle:init/field
### ゲーム説明
function battle:init/description
### ゲーム開始
function battle:game/start
### スコア/メダル計算
function battle:term/score
### 終了
function battle:term/term

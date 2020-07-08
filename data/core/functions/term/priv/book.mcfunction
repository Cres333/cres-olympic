# TODO: ゲームモードやスコアによって本の内容を生成する

## 本のフォーマット
give @p written_book{title:"結果",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"core.term.page1"}','{"interpret":true,"storage":"lang","nbt":"core.term.page2"}']}

## チーム戦の場合
### 各ページに飛ぶ
### 赤チームのメダル総数と内訳 / 赤チームの得点
#### $r:_MEDAL,$r:GOLD,$r:SILVER,$r:BRONZE,$r:POINT
### 青チームのメダル総数と内訳 / 青チームの得点
### 黄チームのメダル総数と内訳 / 黄チームの得点
### 緑チームのメダル総数と内訳 / 緑チームの得点
### 最も金メダル数の多いプレイヤー / 最も平均得点の高いプレイヤー
#### @a[scores={_MOST=1}], @a[scores={_MOST=2}]
### 各チームのメダル総数 / 各チームの合計得点 の表示と 各プレイヤーの平均ポイント をリストに表示
#### $*:_MEDAL,$*:POINT,SCORE
### 終了

## 個人戦の場合
### 各ページに飛ぶ
### 最も金メダル数の多いプレイヤー / 最も平均得点の高いプレイヤー
### 各チームのメダル総数 / 各チームの得点 / 各プレイヤーのポイント
### 終了

## 練習の場合
### 即終了

function core:term/finish

# スコアを逆転
## 初期化
scoreboard players set $max SCORE 0
scoreboard players set $minus SCORE -1

## 最高スコア(最も遅いタイム)のプレイヤーの値を取る
scoreboard players operation $max SCORE > @a[predicate=util:join] SCORE

## 全員に -1 をかけて逆転させる
scoreboard players operation @a[predicate=util:join] SCORE *= $minus SCORE

## 最高スコアのプレイヤーが0にならないように1000を基本値として足す
scoreboard players add $max SCORE 1000

## スコア0は脱落者なので、それ以外のプレイヤーに最高スコア+1000を足す
scoreboard players operation @a[predicate=util:join,scores={SCORE=..-1}] SCORE += $max SCORE

## 破棄
scoreboard players reset $max SCORE
scoreboard players reset $minus SCORE

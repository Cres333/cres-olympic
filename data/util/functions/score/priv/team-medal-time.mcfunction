# チーム戦のメダル
## 初期化
scoreboard players set $most SCORE 10000000

## 金メダルを配分
execute if score $r SCORE matches 1.. run scoreboard players operation $most SCORE < $r SCORE
execute if score $b SCORE matches 1.. run scoreboard players operation $most SCORE < $b SCORE
execute if score $y SCORE matches 1.. run scoreboard players operation $most SCORE < $y SCORE
execute if score $g SCORE matches 1.. run scoreboard players operation $most SCORE < $g SCORE
### 金メダルを得る対象チーム選別
execute if score $most SCORE = $r SCORE run scoreboard players set @a[team=r,predicate=util:join] _MEDAL 1
execute if score $most SCORE = $b SCORE run scoreboard players set @a[team=b,predicate=util:join] _MEDAL 1
execute if score $most SCORE = $y SCORE run scoreboard players set @a[team=y,predicate=util:join] _MEDAL 1
execute if score $most SCORE = $g SCORE run scoreboard players set @a[team=g,predicate=util:join] _MEDAL 1
### チームに金メダル配分
execute if entity @p[team=r,scores={_MEDAL=1}] run scoreboard players add $r GOLD 1
execute if entity @p[team=b,scores={_MEDAL=1}] run scoreboard players add $b GOLD 1
execute if entity @p[team=y,scores={_MEDAL=1}] run scoreboard players add $y GOLD 1
execute if entity @p[team=g,scores={_MEDAL=1}] run scoreboard players add $g GOLD 1
### 残数を計算
execute if entity @p[team=r,scores={_MEDAL=1}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=b,scores={_MEDAL=1}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=y,scores={_MEDAL=1}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=g,scores={_MEDAL=1}] run scoreboard players remove $remainMedal _MEDAL 1
### 後処理
execute if entity @p[team=r,scores={_MEDAL=1}] run scoreboard players reset $r SCORE
execute if entity @p[team=b,scores={_MEDAL=1}] run scoreboard players reset $b SCORE
execute if entity @p[team=y,scores={_MEDAL=1}] run scoreboard players reset $y SCORE
execute if entity @p[team=g,scores={_MEDAL=1}] run scoreboard players reset $g SCORE
scoreboard players set @a[scores={_MEDAL=1..}] SCORE 10000001
scoreboard players set $most SCORE 10000000

## 銀メダルを配分
execute if score $remainMedal _MEDAL matches 1.. if score $r SCORE matches 1.. run scoreboard players operation $most SCORE < $r SCORE
execute if score $remainMedal _MEDAL matches 1.. if score $b SCORE matches 1.. run scoreboard players operation $most SCORE < $b SCORE
execute if score $remainMedal _MEDAL matches 1.. if score $y SCORE matches 1.. run scoreboard players operation $most SCORE < $y SCORE
execute if score $remainMedal _MEDAL matches 1.. if score $g SCORE matches 1.. run scoreboard players operation $most SCORE < $g SCORE
### 銀メダルを得る対象チーム選別
execute if score $most SCORE = $r SCORE run scoreboard players set @a[team=r,predicate=util:join] _MEDAL 2
execute if score $most SCORE = $b SCORE run scoreboard players set @a[team=b,predicate=util:join] _MEDAL 2
execute if score $most SCORE = $y SCORE run scoreboard players set @a[team=y,predicate=util:join] _MEDAL 2
execute if score $most SCORE = $g SCORE run scoreboard players set @a[team=g,predicate=util:join] _MEDAL 2
### チームに銀メダル配分
execute if entity @p[team=r,scores={_MEDAL=2}] run scoreboard players add $r SILVER 1
execute if entity @p[team=b,scores={_MEDAL=2}] run scoreboard players add $b SILVER 1
execute if entity @p[team=y,scores={_MEDAL=2}] run scoreboard players add $y SILVER 1
execute if entity @p[team=g,scores={_MEDAL=2}] run scoreboard players add $g SILVER 1
### 残数を計算
execute if entity @p[team=r,scores={_MEDAL=2}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=b,scores={_MEDAL=2}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=y,scores={_MEDAL=2}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=g,scores={_MEDAL=2}] run scoreboard players remove $remainMedal _MEDAL 1
### 後処理
execute if entity @p[team=r,scores={_MEDAL=2}] run scoreboard players reset $r SCORE
execute if entity @p[team=b,scores={_MEDAL=2}] run scoreboard players reset $b SCORE
execute if entity @p[team=y,scores={_MEDAL=2}] run scoreboard players reset $y SCORE
execute if entity @p[team=g,scores={_MEDAL=2}] run scoreboard players reset $g SCORE
scoreboard players set @a[scores={_MEDAL=1..}] SCORE 10000001
scoreboard players set $most SCORE 10000000

## 銅メダルを配分
execute if score $remainMedal _MEDAL matches 1.. if score $r SCORE matches 1.. run scoreboard players operation $most SCORE < $r SCORE
execute if score $remainMedal _MEDAL matches 1.. if score $b SCORE matches 1.. run scoreboard players operation $most SCORE < $b SCORE
execute if score $remainMedal _MEDAL matches 1.. if score $y SCORE matches 1.. run scoreboard players operation $most SCORE < $y SCORE
execute if score $remainMedal _MEDAL matches 1.. if score $g SCORE matches 1.. run scoreboard players operation $most SCORE < $g SCORE
### 銅メダルを得る対象チーム選別
execute if score $most SCORE = $r SCORE run scoreboard players set @a[team=r,predicate=util:join] _MEDAL 3
execute if score $most SCORE = $b SCORE run scoreboard players set @a[team=b,predicate=util:join] _MEDAL 3
execute if score $most SCORE = $y SCORE run scoreboard players set @a[team=y,predicate=util:join] _MEDAL 3
execute if score $most SCORE = $g SCORE run scoreboard players set @a[team=g,predicate=util:join] _MEDAL 3
### チームに銅メダル配分
execute if entity @p[team=r,scores={_MEDAL=3}] run scoreboard players add $r BRONZE 1
execute if entity @p[team=b,scores={_MEDAL=3}] run scoreboard players add $b BRONZE 1
execute if entity @p[team=y,scores={_MEDAL=3}] run scoreboard players add $y BRONZE 1
execute if entity @p[team=g,scores={_MEDAL=3}] run scoreboard players add $g BRONZE 1
### 残数を計算
execute if entity @p[team=r,scores={_MEDAL=3}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=b,scores={_MEDAL=3}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=y,scores={_MEDAL=3}] run scoreboard players remove $remainMedal _MEDAL 1
execute if entity @p[team=g,scores={_MEDAL=3}] run scoreboard players remove $remainMedal _MEDAL 1
### 後処理
execute if entity @p[team=r,scores={_MEDAL=3}] run scoreboard players reset $r SCORE
execute if entity @p[team=b,scores={_MEDAL=3}] run scoreboard players reset $b SCORE
execute if entity @p[team=y,scores={_MEDAL=3}] run scoreboard players reset $y SCORE
execute if entity @p[team=g,scores={_MEDAL=3}] run scoreboard players reset $g SCORE
scoreboard players set @a[scores={_MEDAL=1..}] SCORE 10000001
scoreboard players set $most SCORE 10000000

## 個人メダルをアーマースタンドに保存
execute as @a[predicate=util:join] run function storage:register/medal

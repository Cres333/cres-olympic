# 個人戦のメダル
## 初期化
scoreboard players set $most SCORE -1

## 金メダルを配分
execute as @a[predicate=util:join] run scoreboard players operation $most SCORE < @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 1
scoreboard players reset @a[scores={_MEDAL=1..}] SCORE
scoreboard players set $most SCORE -1

## 銀メダルを配分 (1人以上残っていれば)
execute as @a[predicate=util:join] if score $remainMedal _MEDAL matches 1.. run scoreboard players operation $most SCORE < @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 2
scoreboard players reset @a[scores={_MEDAL=1..}] SCORE
scoreboard players set $most SCORE -1

## 銅メダルを配分 (1人以上残っていれば)
execute as @a[predicate=util:join] if score $remainMedal _MEDAL matches 1.. run scoreboard players operation $most SCORE < @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 3
scoreboard players reset @a[scores={_MEDAL=1..}] SCORE
scoreboard players set $most SCORE -1

## アーマースタンドに保存
function util:score/priv/setting-medal

# 個人戦のメダル
## 初期化
scoreboard players set $most SCORE -1

## 金メダルを配分
execute as @a[predicate=util:join] run scoreboard players operation $most SCORE > @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 1
scoreboard players set @a[scores={_MEDAL=1..}] SCORE -10
scoreboard players set $most SCORE -1

## 銀メダルを配分 (1人以上残っていれば)
execute if score $remainMedal _MEDAL matches 1.. as @a[predicate=util:join] run scoreboard players operation $most SCORE > @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 2
scoreboard players set @a[scores={_MEDAL=1..}] SCORE -10
scoreboard players set $most SCORE -1

## 銅メダルを配分 (1人以上残っていれば)
execute if score $remainMedal _MEDAL matches 1.. as @a[predicate=util:join] run scoreboard players operation $most SCORE > @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 3
scoreboard players set @a[scores={_MEDAL=1..}] SCORE -10
scoreboard players set $most SCORE -1

## アーマースタンドに保存
execute as @a[predicate=util:join] run function storage:register/medal

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

## チームにメダル配分
execute as @a[scores={_MEDAL=1},team=r] run scoreboard players add $r GOLD 1
execute as @a[scores={_MEDAL=2},team=r] run scoreboard players add $r SILVER 1
execute as @a[scores={_MEDAL=3},team=r] run scoreboard players add $r BRONZE 1
execute as @a[scores={_MEDAL=1},team=b] run scoreboard players add $b GOLD 1
execute as @a[scores={_MEDAL=2},team=b] run scoreboard players add $b SILVER 1
execute as @a[scores={_MEDAL=3},team=b] run scoreboard players add $b BRONZE 1
execute as @a[scores={_MEDAL=1},team=y] run scoreboard players add $y GOLD 1
execute as @a[scores={_MEDAL=2},team=y] run scoreboard players add $y SILVER 1
execute as @a[scores={_MEDAL=3},team=y] run scoreboard players add $y BRONZE 1
execute as @a[scores={_MEDAL=1},team=g] run scoreboard players add $g GOLD 1
execute as @a[scores={_MEDAL=2},team=g] run scoreboard players add $g SILVER 1
execute as @a[scores={_MEDAL=3},team=g] run scoreboard players add $g BRONZE 1

## アーマースタンドに保存
execute as @a[predicate=util:join] run function storage:register/medal

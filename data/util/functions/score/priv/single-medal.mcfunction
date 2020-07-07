# 個人戦のメダル
## 初期化
scoreboard players set $most SCORE -1

## 金メダルを配分
execute as @a[predicate=util:join] run scoreboard players operation $most SCORE > @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 1
scoreboard players reset @a[scores={_MEDAL=1..}] SCORE
scoreboard players set $most SCORE -1

## 銀メダルを配分 (1人以上残っていれば)
execute if score $remainMedal _MEDAL matches 1.. as @a[predicate=util:join] run scoreboard players operation $most SCORE > @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 2
scoreboard players reset @a[scores={_MEDAL=1..}] SCORE
scoreboard players set $most SCORE -1

## 銅メダルを配分 (1人以上残っていれば)
execute if score $remainMedal _MEDAL matches 1.. as @a[predicate=util:join] run scoreboard players operation $most SCORE > @s SCORE
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players remove $remainMedal _MEDAL 1
execute as @a[predicate=util:join] if score $most SCORE = @s SCORE run scoreboard players set @s _MEDAL 3
scoreboard players reset @a[scores={_MEDAL=1..}] SCORE
scoreboard players set $most SCORE -1

### チームに金メダル配分
execute as @a[team=r,scores={_MEDAL=1}] run scoreboard players add $r GOLD 1
execute as @a[team=b,scores={_MEDAL=1}] run scoreboard players add $b GOLD 1
execute as @a[team=y,scores={_MEDAL=1}] run scoreboard players add $y GOLD 1
execute as @a[team=g,scores={_MEDAL=1}] run scoreboard players add $g GOLD 1

### チームに銀メダル配分
execute as @a[team=r,scores={_MEDAL=2}] run scoreboard players add $r SILVER 1
execute as @a[team=b,scores={_MEDAL=2}] run scoreboard players add $b SILVER 1
execute as @a[team=y,scores={_MEDAL=2}] run scoreboard players add $y SILVER 1
execute as @a[team=g,scores={_MEDAL=2}] run scoreboard players add $g SILVER 1

### チームに銅メダル配分
execute as @a[team=r,scores={_MEDAL=3}] run scoreboard players add $r BRONZE 1
execute as @a[team=b,scores={_MEDAL=3}] run scoreboard players add $b BRONZE 1
execute as @a[team=y,scores={_MEDAL=3}] run scoreboard players add $y BRONZE 1
execute as @a[team=g,scores={_MEDAL=3}] run scoreboard players add $g BRONZE 1

## アーマースタンドに保存
execute as @a[predicate=util:join] run function storage:register/medal

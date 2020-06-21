# フィールドを狭める
## 白羊毛は全部狭める必要があるため、一色ずつチェック

## 赤エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 0 ~ #dodge:r run scoreboard players set $contract _ 1
### 内側に一段ずらす
### TODO: フィールド座標
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0

## 青エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 0 ~ #dodge:b run scoreboard players set $contract _ 1
### 内側に一段ずらす
### TODO: フィールド座標
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0

## 黄エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 0 ~ #dodge:y run scoreboard players set $contract _ 1
### 内側に一段ずらす
### TODO: フィールド座標
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0

## 緑エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 0 ~ #dodge:g run scoreboard players set $contract _ 1
### 内側に一段ずらす
### TODO: フィールド座標
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0
execute if score $contract _ matches 1 run clone 0 0 0 0 0 0 0 0 0

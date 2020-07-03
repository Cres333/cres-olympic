# フィールドを狭める
## 白羊毛は全部狭める必要があるため、一色ずつチェック

## 赤エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 33 ~ #dodge:r run scoreboard players set $contract _ 1
### 内側に一段ずらす
execute if score $contract _ matches 1 run clone 1037 39 -1369 1058 34 -1354 1037 34 -1368 replace force
execute if score $contract _ matches 1 run clone 1036 39 -1368 1051 34 -1347 1037 34 -1368 replace force

## 青エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 33 ~ #dodge:b run scoreboard players set $contract _ 1
### 内側に一段ずらす
execute if score $contract _ matches 1 run clone 1082 39 -1324 1067 34 -1345 1066 34 -1345 replace force
execute if score $contract _ matches 1 run clone 1081 39 -1323 1060 34 -1338 1060 34 -1339 replace force

## 黄エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 33 ~ #dodge:y run scoreboard players set $contract _ 1
### 内側に一段ずらす
execute if score $contract _ matches 1 run clone 1037 39 -1323 1058 34 -1338 1037 34 -1339 replace force
execute if score $contract _ matches 1 run clone 1036 39 -1324 1051 34 -1345 1037 34 -1345 replace force

## 緑エリア
scoreboard players set $contract _ 0
execute at @e[tag=ball] if block ~ 33 ~ #dodge:g run scoreboard players set $contract _ 1
### 内側に一段ずらす
execute if score $contract _ matches 1 run clone 1082 39 -1368 1067 34 -1347 1066 34 -1368 replace force
execute if score $contract _ matches 1 run clone 1081 39 -1369 1060 34 -1354 1060 34 -1368 replace force

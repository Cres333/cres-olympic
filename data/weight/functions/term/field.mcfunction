# フィールドロード
forceload add 1045 -1332 1073 -1360
fill 1045 32 -1332 1073 40 -1360 air
forceload remove 1045 -1332 1073 -1360

## ロードの成功フラグ
#scoreboard players set $load _ 0
#
## 両サイドのチャンクが読み込まれていればフィールドを削除する
#execute store success score $load _ if blocks 1045 255 -1332 1073 255 -1360 0 0 0 masked run fill 1045 32 -1332 1073 40 -1360 air
#
## 削除が完了していたら終了
#execute if score $load _ matches 1 run function weight:term/end
#execute if score $load _ matches 1 run scoreboard players reset $load _
#
## 削除が未完了なら再更新
#execute if score $load _ matches 0 run schedule function weight:term/field 1s

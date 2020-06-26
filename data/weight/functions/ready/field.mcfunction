# フィールドロード
clone 0 1 0 32 8 32 1045 32 -1360

## ロードの成功フラグ
#scoreboard players set $load _ 0
#
## 両サイドのチャンクが読み込まれていればフィールドをロードする
#execute store success score $load _ if blocks 1045 255 -1332 1073 255 -1360 0 0 0 masked run clone 0 1 0 32 8 32 1045 32 -1360
#
## 読み込みが完了していたら終了
#execute if score $load _ matches 1 run scoreboard players reset $load _
#
## 読み込みが未完了なら再更新
#execute if score $load _ matches 0 run schedule function weight:ready/field 1s

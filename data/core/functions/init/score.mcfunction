# スコアボード破棄
scoreboard objectives remove ID
scoreboard objectives remove JOIN
scoreboard objectives remove PLAY
scoreboard objectives remove SCORE
scoreboard objectives remove COUNT
scoreboard objectives remove LOGOUT
scoreboard objectives remove _

# スコアボード生成
scoreboard objectives add ID dummy "ID"
scoreboard objectives add JOIN dummy "参加中プレイヤー(0 or 1)"
scoreboard objectives add PLAY dummy "競技中プレイヤー(0 or 1)"
scoreboard objectives add SCORE dummy {"color":"light_purple","bold":true,"translate":"⇚ %s ⇛","with":[{"text":"平均ポイント","color":"gold"}]}
scoreboard objectives add COUNT dummy "参加回数"
scoreboard objectives add LOGOUT custom:leave_game "ログアウト"
scoreboard objectives add _ dummy "各ゲームの管理用"

# スコボード表示
scoreboard objectives setdisplay list COUNT

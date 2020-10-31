# フィールド削除
fill 1025 32 -1403 1094 38 -1346 air
fill 1025 32 -1345 1093 38 -1289 air

schedule clear draft:soccer/sys/wait/loop

# ゲーム設定を削除
scoreboard objectives remove _HAS
scoreboard objectives remove _COOL
bossbar remove cool

## 次のゲーム
function draft:game/next

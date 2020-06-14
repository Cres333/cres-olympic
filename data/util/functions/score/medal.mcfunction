# メダル計算
## 初期化
scoreboard objectives add _MEDAL dummy
scoreboard players set $remainMedal _MEDAL 3

## チーム戦か個人戦か判断
execute if data storage main {team:true} run function util:score/priv/team-medal
execute if data storage main {team:false} run function util:score/priv/single-medal

## 破棄
scoreboard objectives remove _MEDAL

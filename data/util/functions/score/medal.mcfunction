# メダル計算
## 初期化
scoreboard objectives add _MEDAL dummy
scoreboard players set $remainMedal _MEDAL 3

## チーム戦か個人戦か判断
execute if data storage main {team:true,score:time} run function util:score/priv/team-medal-time
execute if data storage main {team:true,score:win} run function util:score/priv/team-medal-win
execute if data storage main {team:true,score:point} run function util:score/priv/team-medal
execute if data storage main {team:false} run function util:score/priv/single-medal

## 結果表示
execute if data storage main {mode:multi,team:true} run function util:score/priv/show/medal-team
execute if data storage main {mode:multi,team:false} run function util:score/priv/show/medal
execute if data storage main {mode:single} run function util:score/priv/show/medal-single

## 破棄
scoreboard objectives remove _MEDAL

# ランダムにエフェクト付与
## 生成
scoreboard players set $effect _ 1
execute if predicate util:bit run scoreboard players add $effect _ 1
execute if predicate util:bit run scoreboard players add $effect _ 2
execute if predicate util:bit run scoreboard players add $effect _ 4

execute if score $effect _ matches 1 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:15728402,Effects:[{Id:11b,Amplifier:1b,Duration:300,ShowParticles:1b}]}
execute if score $effect _ matches 2 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:16711680,Effects:[{Id:5b,Amplifier:1b,Duration:300,ShowParticles:1b}]}
execute if score $effect _ matches 3 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:4718387,Effects:[{Id:10b,Amplifier:1b,Duration:300,ShowParticles:1b}]}
execute if score $effect _ matches 4 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:16777215,Effects:[{Id:14b,Amplifier:1b,Duration:300,ShowParticles:1b}]}
execute if score $effect _ matches 5 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:8292766,Effects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}]}
execute if score $effect _ matches 6 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:0,Effects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}]}
execute if score $effect _ matches 7 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:5645432,Effects:[{Id:19b,Amplifier:1b,Duration:200,ShowParticles:1b}]}
execute if score $effect _ matches 8 run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",NoGravity:1b,ReapplicationDelay:200,Radius:2.5f,RadiusPerTick:-0.02f,Duration:200,WaitTime:20,Color:2752511,Effects:[{Id:1b,Amplifier:3b,Duration:300,ShowParticles:1b}]}

execute if score $effect _ matches 1 run title @a actionbar {"bold":true,"color":"green","text":"GOOD: 防御強化エフェクト発生"}
execute if score $effect _ matches 2 run title @a actionbar {"bold":true,"color":"green","text":"GOOD: 攻撃強化エフェクト発生"}
execute if score $effect _ matches 3 run title @a actionbar {"bold":true,"color":"green","text":"GOOD: 体力回復エフェクト発生"}
execute if score $effect _ matches 4 run title @a actionbar {"bold":true,"color":"green","text":"GOOD: 透明化エフェクト発生"}
execute if score $effect _ matches 5 run title @a actionbar {"bold":true,"color":"blue","text":"BAD: 速度低下エフェクト発生"}
execute if score $effect _ matches 6 run title @a actionbar {"bold":true,"color":"blue","text":"BAD: 盲目エフェクト発生"}
execute if score $effect _ matches 7 run title @a actionbar {"bold":true,"color":"blue","text":"BAD: 毒エフェクト発生"}
execute if score $effect _ matches 8 run title @a actionbar {"bold":true,"color":"blue","text":"BAD: 速度上昇エフェクト発生"}

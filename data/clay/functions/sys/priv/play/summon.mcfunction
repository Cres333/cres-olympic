# クリーパーを召喚
## X:-0.5~0.5, Y:1.4~1.8, Z: 4.0~4.2
particle minecraft:explosion 1059 33 -1396 0 0 0 1 3 force
playsound minecraft:entity.generic.explode master @a 1059 33 -1396 10
execute if score $random _ matches 1 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[-0.5,1.4,4.5]}
execute if score $random _ matches 2 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[-0.5,1.4,4.8]}
execute if score $random _ matches 3 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[-0.5,1.4,4.7]}
execute if score $random _ matches 4 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[-0.5,1.8,5.0]}
execute if score $random _ matches 5 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[-0.5,1.8,5.1]}
execute if score $random _ matches 6 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[-0.5,1.8,5.2]}
execute if score $random _ matches 7 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.0,1.4,5.0]}
execute if score $random _ matches 8 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.0,1.8,4.5]}
execute if score $random _ matches 9 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.0,1.4,5.0]}
execute if score $random _ matches 10 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.0,1.8,5.1]}
execute if score $random _ matches 11 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.5,1.4,5.0]}
execute if score $random _ matches 12 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.5,1.4,5.1]}
execute if score $random _ matches 13 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.5,1.4,4.9]}
execute if score $random _ matches 14 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.5,1.8,4.8]}
execute if score $random _ matches 15 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.5,1.8,4.7]}
execute if score $random _ matches 16 run summon creeper 1059 32 -1396 {Health:0.01f,ActiveEffects:[{Id:25b,Amplifier:255,Duration:30,ShowParticles:false}],Motion:[0.5,1.8,4.6]}

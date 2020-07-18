# システム開始処理
## 全員に弓を渡す
give @a bow{Unbreakable:true,HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:-1,Operation:1,UUID:[I;0,1,0,1]}]}
give @a tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}],Potion:"minecraft:empty"} 8

## 壁を消す
fill 1109 36 -1354 1091 40 -1346 air
fill 1109 36 -1346 1091 38 -1346 cyan_stained_glass

function boat:sys/wait/loop

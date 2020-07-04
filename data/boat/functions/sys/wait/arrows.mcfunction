# 矢を渡す処理
## 灰色の旗を通過時に矢を持っていない場合は３本取得
execute as @a[predicate=boat:arrow] at @s if block ~ ~0.5 ~ gray_banner run give @s tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:1b,Duration:200,ShowParticles:1b}],Potion:"minecraft:empty"} 3

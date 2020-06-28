# ストレージにゲームモード情報を設定
## 初期化
scoreboard players set $core:teamNum _ 0
scoreboard players set $core:redNum _ 0

## チーム数を計測
execute as @p[team=r] run scoreboard players add $core:teamNum _ 1
execute as @p[team=b] run scoreboard players add $core:teamNum _ 1
execute as @p[team=y] run scoreboard players add $core:teamNum _ 1
execute as @p[team=g] run scoreboard players add $core:teamNum _ 1

## 赤チームの人数を計測
execute as @a[team=r] run scoreboard players add $core:redNum _ 1

## チーム数を設定
execute store result storage main teamNum int 1 run scoreboard players get $core:teamNum _

## ゲームモードを設定
execute if score $core:teamNum _ matches 2.. run data merge storage main {mode:multi}
execute if score $core:teamNum _ matches 1 if score $core:redNum _ matches 2.. run data merge storage main {mode:single}
execute if score $core:teamNum _ matches 1 if score $core:redNum _ matches 1 run data merge storage main {mode:only}

## 破棄
scoreboard players reset $core:teamNum _
scoreboard players reset $core:redNum _

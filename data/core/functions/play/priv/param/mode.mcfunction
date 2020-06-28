# ストレージにゲームモード情報を設定
## 各チームの人数を計測
execute as @a[team=r] run scoreboard players add $core:rNum _ 1
execute as @a[team=b] run scoreboard players add $core:bNum _ 1
execute as @a[team=y] run scoreboard players add $core:yNum _ 1
execute as @a[team=g] run scoreboard players add $core:gNum _ 1

## 全チームの最低人数を計算する
execute if score $core:rNum _ matches 1.. run scoreboard players operation $core:minNum _ > $core:rNum _
execute if score $core:bNum _ matches 1.. run scoreboard players operation $core:minNum _ > $core:bNum _
execute if score $core:yNum _ matches 1.. run scoreboard players operation $core:minNum _ > $core:yNum _
execute if score $core:gNum _ matches 1.. run scoreboard players operation $core:minNum _ > $core:gNum _

## 最低人数を設定
execute store result storage main minNum int 1 run scoreboard players get $core:minNum _

## チーム数を計測
execute if score $core:rNum _ matches 1.. run scoreboard players add $core:teamNum _ 1
execute if score $core:bNum _ matches 1.. run scoreboard players add $core:teamNum _ 1
execute if score $core:yNum _ matches 1.. run scoreboard players add $core:teamNum _ 1
execute if score $core:gNum _ matches 1.. run scoreboard players add $core:teamNum _ 1

## チーム数を設定
execute store result storage main teamNum int 1 run scoreboard players get $core:teamNum _

## ゲームモードを設定
execute if score $core:teamNum _ matches 2.. run data merge storage main {mode:multi}
execute if score $core:teamNum _ matches 1 if score $core:rNum _ matches 2.. run data merge storage main {mode:single}
execute if score $core:teamNum _ matches 1 if score $core:rNum _ matches 1 run data merge storage main {mode:only}

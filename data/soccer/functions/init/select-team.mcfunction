# チーム構成
## 全チーム数を取得
execute store result score $teamNum _ run data get storage main teamNum

## 2チームのケース
execute if score $teamNum _ matches 2 run data modify storage soccer battle append value {w:red,b:blue}

## 3チームのケース
execute if score $teamNum _ matches 3 run data modify storage soccer battle append value {w:red,b:blue}
execute if score $teamNum _ matches 3 run data modify storage soccer battle append value {w:red,b:yellow}
execute if score $teamNum _ matches 3 run data modify storage soccer battle append value {w:yellow,b:blue}

## 4チームのケース
execute if score $teamNum _ matches 4 run data modify storage soccer battle append value {w:red,b:blue}
execute if score $teamNum _ matches 4 run data modify storage soccer battle append value {w:yellow,b:green}
execute if score $teamNum _ matches 4 run data modify storage soccer battle append value {w:red,b:yellow}
execute if score $teamNum _ matches 4 run data modify storage soccer battle append value {w:blue,b:green}
execute if score $teamNum _ matches 4 run data modify storage soccer battle append value {w:red,b:green}
execute if score $teamNum _ matches 4 run data modify storage soccer battle append value {w:blue,b:yellow}

## 配列の最後
data modify storage soccer battle append value {w:empty,b:empty}

## Next: ゲーム開始
function soccer:game/start

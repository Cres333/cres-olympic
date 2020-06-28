# 競技開始処理
## 初期化
function storage:settings/game
function storage:settings/score
scoreboard players set $core:teamNum _ 0
scoreboard players set $core:rNum _ 0
scoreboard players set $core:bNum _ 0
scoreboard players set $core:yNum _ 0
scoreboard players set $core:gNum _ 0
scoreboard players set $core:minNum _ 1000

## ID割当
function core:play/priv/param/id

## ストレージにゲームモード情報を設定
function core:play/priv/param/mode

## ストレージに競技を設定
function core:play/priv/param/game

## 競技選択処理
function core:game/next

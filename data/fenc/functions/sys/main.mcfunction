# ゲームの機構
## 初期化
scoreboard players reset * _ATTACK
scoreboard players reset * _DAMAGE
scoreboard players set $end _ 0

## 選手をTPする
function fenc:sys/priv/setting-position

## 選手に剣を持たせる
give @a[predicate=util:play] iron_sword{Enchantments:[{id:"minecraft:knockback",lvl:100}]}

## スピード上昇エフェクトをかける
effect give @a[predicate=util:play] speed 100000 1 true

## カウントダウン開始
function util:count/start

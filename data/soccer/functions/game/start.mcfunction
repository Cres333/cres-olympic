# scoreboard 設定
scoreboard players set $time _ 6000

# bossbar 設定
bossbar set time players @a
bossbar set time visible true

# プレイヤー関係のscore設定
scoreboard players set @a[predicate=util:play] _COOL 0
scoreboard players set @a[predicate=util:play] _HAS 0

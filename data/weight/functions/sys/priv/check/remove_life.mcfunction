# 一時待避
scoreboard players operation @s _SHOW = @s _CLICK

# ライフ減少
scoreboard players operation @s _CLICK -= $value _CLICK
scoreboard players operation @s _LIFE -= @s _CLICK

# もとに戻す
scoreboard players operation @s _CLICK = @s _SHOW
scoreboard players set @s _SHOW 0

# ライフが0以下なら0にする
scoreboard players set @s[scores={_LIFE=..0}] _LIFE 0

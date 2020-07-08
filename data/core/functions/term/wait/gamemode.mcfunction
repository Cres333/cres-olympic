# ゲームモードを変更した人に本をプレゼント
## 本を持っていない人限定
execute as @a[predicate=core:book] run function core:term/priv/book

schedule function core:term/wait/gamemode 5t

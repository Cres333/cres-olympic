# ゲームモードを変更した人に本をプレゼント
## 本を持っていない人限定
execute as @a[predicate=core:book] run give @s written_book{title:"結果",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"draft.next"}']}

schedule function draft:util/next/wait 5t

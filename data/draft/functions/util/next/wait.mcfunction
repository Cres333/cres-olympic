# ゲームモードを変更した人に本をプレゼント
## 本を持っていない人限定
execute as @a[predicate=core:book] run give @s written_book{title:"次の競技へ移る",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"draft.next"}']}

title @a actionbar "[下見モード] クリエイティブモードになると「次の競技に移行する」本を貰えます。"

schedule function draft:util/next/wait 5t

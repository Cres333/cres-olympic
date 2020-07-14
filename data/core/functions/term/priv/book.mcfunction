# ゲームモードやスコアによって本の内容を生成する
## チーム戦の場合
execute if data storage main {mode:team} run give @s written_book{title:"結果",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"core.book.team"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[0]"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[1]"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[2]"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[3]"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[4]"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[5]"}']}

## 個人戦の場合
execute if data storage main {mode:single} run give @s written_book{title:"結果",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"core.book.single"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[4]"}','{"interpret":true,"storage":"lang","nbt":"core.book.pages[5]"}']}

## 練習の場合
execute if data storage main {mode:only} run give @s written_book{title:"結果",author:"",pages:['{"interpret":true,"storage":"lang","nbt":"core.book.only"}']}

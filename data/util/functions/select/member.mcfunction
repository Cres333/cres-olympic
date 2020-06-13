# メンバー選出 {in:競技+各チームの参加数,out:参加者全員、JOINを1にする}
# TODO: メンバーの選出処理

## in / data merge storage main {game:soccer,join:4}

# 全員をTPさせる
gamemode adventure @a[scores={ID=0..}]
tp @a[team=r] 1004 31 -1468 90 0
tp @a[team=b] 1114 31 -1224 -90 0
tp @a[team=y] 1131 31 -1451 180 0
tp @a[team=g] 987 31 -1241 0 0

# 全員にTicketを渡す
give @a[team=!] paper{key:ticket,display:{Name:'{"text":"参加券"}',Lore:['{"text":"参加券を捨てると参加表明"}']}}

# ライトが光るまで待つ
# ライトが光ったらTicketを捨てた人数をチェックする
## 人数が少なかったらエラー
## 人数がジャストだったらOK
## 人数が多かったら参加数が少ない順に追加
# 全チームの人数が揃ったら各競技に戻す

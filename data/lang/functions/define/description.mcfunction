# 全体
data modify storage lang util.select.ng set value '{"text":"[システム] 参加人数が足りていません","color":"red"}'
data modify storage lang util.select.ok set value '{"text":"[システム] 参加者を確定しました","color":"yellow"}'

# ウェイトリフティングの説明
data modify storage lang weight.descNum set value 9
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["= ウェイトリフティング ="]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["指定された回数以上、右クリックを連打する競技です。"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["最初に「何回、右クリックしろ」と指示が来るため、"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["その回数以上、ニンジン棒を持って右クリックしてください。"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["指定された回数未満だと、失格になります。"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["指定された回数以上でも、ライフが無くなると、"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["力尽きて、失格となります。"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["全５回戦を行い、最もライフが残っていた人が勝利します。"]}'
data modify storage lang weight.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、２人を選出してください。"]}'

# サッカーの説明
data modify storage lang soccer.descNum set value 9
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["= サッカー ="]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["各チーム４人で相手のチームのゴールにボールを入れる競技です。"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["ボールを持っている選手には雪玉が渡されます。"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["雪玉を投げるとボールも飛んでいきます。"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["ボールを持っていない選手はリードを持っているため、"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["リードでボールを持っている選手を叩くとボールを落とします。"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["制限時間の３分以内に相手のゴールへたくさんボールを入れてください。"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["競技は総当りで行い、よりゴール数を稼いだチームが勝利します。"]}'
data modify storage lang soccer.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、４人を選出してください。"]}'

data modify storage lang soccer.cooldown set value '{"text":":: 現在、ボールを持てません ::","color":"red"}'

# 水泳の説明
data modify storage lang swim.descNum set value 7
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["= 水泳 ="]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["各チーム４人で他のチームよりも速く水の中を泳ぎきる競技です。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["選手には泳ぎ始めるときに、トライデントが渡されます。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["トライデントを使うと、スピードが上がりますが、"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["一定時間、経たないと使うことができません。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["各選手は反対側の壁まで泳ぎきると、次の選手が泳げるようになります。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、４人を選出してください。"]}'

data modify storage lang swim.player prepend value '{"translate":""}'
data modify storage lang swim.player prepend value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"１","color":"red"}]}'
data modify storage lang swim.player prepend value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"２","color":"red"}]}'
data modify storage lang swim.player prepend value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"３","color":"red"}]}'
data modify storage lang swim.player prepend value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"４","color":"red"}]}'

data modify storage lang swim.cooldown set value '{"text":":: 現在、トライデントを使えません ::","color":"red"}'

# クレー射撃の説明
data modify storage lang clay.descNum set value 8
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["= クレー射撃 ="]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["奥から飛んでくるブタを撃ち抜く競技です。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["選手にはクロスボウと、１５本の矢が渡されます。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["その後にカウントダウンが始まり、"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["５秒ごとに連続で１０匹のブタが飛んできます。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["より多くのブタをクロスボウで撃ち抜いてください。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["競技台の赤の部分に降りてしまうとリタイアとなります。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、２人を選出してください。"]}'

# リレーの説明
data modify storage lang relay.descNum set value 6
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["= リレー ="]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["各チーム４人で様々な障害物を乗り越えて２周走る競技です。"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["各選手はトラックを半周して、次の選手につなぎます。"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["トラック上にはダイヤモンドブロックと金ブロックがあり、"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["それぞれのブロックの上を通過するとスピードが上昇します。"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、４人を選出してください。"]}'

data modify storage lang relay.player prepend value '{"translate":""}'
data modify storage lang relay.player prepend value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"１","color":"red"}]}'
data modify storage lang relay.player prepend value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"２","color":"red"}]}'
data modify storage lang relay.player prepend value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"３","color":"red"}]}'
data modify storage lang relay.player prepend value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"４","color":"red"}]}'

# ドッヂの説明
data modify storage lang dodge.descNum set value 9
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["= ドッヂボール ="]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["各チーム３人で炎の玉を相手チームに当てる競技です。"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["各選手は各チームの色と同じ場所から競技が始まります。"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["競技が始まると中央に炎の玉が出現するため、"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["他のチームに当てるたり、飛んできた炎の玉を避けてください。"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["他のチームのエリアに入ると鈍足のエフェクトがかかります。"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["また、各チームのエリアでボールが爆発すると、そのエリアは狭くなります。"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["狭くなった壁の中に埋まってしまった場合は、中央にテレポートします。"]}'
data modify storage lang dodge.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、３人を選出してください。"]}'

# TODO: 勝ち抜き戦の説明
data modify storage lang clay.descNum set value 8
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["= 勝ち抜き戦 ="]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":[""]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":[""]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":[""]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":[""]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":[""]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":[""]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["全員参加ですので、すぐに競技が始まります。"]}'

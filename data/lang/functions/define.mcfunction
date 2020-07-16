# コア
data remove storage lang core
## 設定本
data modify storage lang core.setting.start set value '{"text":"● ゲームを開始する","clickEvent":{"action":"run_command","value":"/function core:play/start"}}'
data modify storage lang core.setting.skip.on set value '{"text":"● ゲーム説明を省略する","clickEvent":{"action":"run_command","value":"/function core:setting/skip-on"}}'
data modify storage lang core.setting.skip.off set value '{"text":"● ゲーム説明を省略しない","clickEvent":{"action":"run_command","value":"/function core:setting/skip-off"}}'
data modify storage lang core.setting.reset set value '{"text":"● 競技を初期化する","clickEvent":{"action":"run_command","value":"/function core:setting/init"}}'
data modify storage lang core.setting.book set value '{"translate":"● ゲーム設定\\n-----\\n\\n%s\\n\\n%s\\n%s\\n\\n%s","with":[{"interpret":true,"storage":"lang","nbt":"core.setting.start"},{"interpret":true,"storage":"lang","nbt":"core.setting.skip.on"},{"interpret":true,"storage":"lang","nbt":"core.setting.skip.off"},{"interpret":true,"storage":"lang","nbt":"core.setting.reset"}]}'
## 競技選択
data modify storage lang core.select.complete set value '{"text":"[システム] プレイする競技を登録しました"}'
data modify storage lang core.select.reset set value '{"text":"[システム] プレイする競技を初期化しました"}'
data modify storage lang core.setting.update set value '{"text":"[システム] ゲーム説明の有無を更新しました"}'
## ゲーム開始時
data modify storage lang core.play.error.over set value '{"text":"[システム] チームの最大人数が８人を超えています","color":"red"}'
data modify storage lang core.play.error.less set value '{"text":"[システム] チームの最低人数を満たしていません","color":"red"}'
data modify storage lang core.play.error.team set value '{"text":"[システム] 赤＞青＞黄＞緑の順にチームを構成してください","color":"red"}'
data modify storage lang core.play.cancel set value '{"text":"[システム] ゲームをキャンセルしました"}'
## ゲーム終了時
data modify storage lang core.term.message set value '{"text":"[システム] 全競技が終了しました。主催者はクリエイティブモードにしてください。"}'
data modify storage lang core.term.finish set value '{"text":"[システム] プレイしていただきありがとうございました。"}'
## 成績本
data modify storage lang core.book.jump.exit set value '{"text":"● ゲームを終了する","clickEvent":{"action":"run_command","value":"/function core:term/finish"},"hoverEvent":{"action":"show_text","value":{"text":"クリックで終了"}}}'
data modify storage lang core.book.jump.mvp set value '{"text":"● 活躍したプレイヤー","clickEvent":{"action":"change_page","value":"2"},"hoverEvent":{"action":"show_text","value":{"text":"クリックでページ移動"}}}'
data modify storage lang core.book.jump.summary set value '{"text":"● 成績まとめ","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","value":{"text":"クリックでページ移動"}}}'
data modify storage lang core.book.jump.red set value '{"text":"● 赤チームの成績","clickEvent":{"action":"change_page","value":"4"}},"hoverEvent":{"action":"show_text","value":{"text":"クリックでページ移動"}}}'
data modify storage lang core.book.jump.blue set value '{"text":"● 青チームの成績","clickEvent":{"action":"change_page","value":"5"},"hoverEvent":{"action":"show_text","value":{"text":"クリックでページ移動"}}}'
data modify storage lang core.book.jump.yellow set value '{"text":"● 黄チームの成績","clickEvent":{"action":"change_page","value":"6"},"hoverEvent":{"action":"show_text","value":{"text":"クリックでページ移動"}}}'
data modify storage lang core.book.jump.green set value '{"text":"● 緑チームの成績","clickEvent":{"action":"change_page","value":"7"},"hoverEvent":{"action":"show_text","value":{"text":"クリックでページ移動"}}}'
data modify storage lang core.book.show.score set value '{"text":"スコア表示","clickEvent":{"action":"run_command","value":"/function core:term/priv/show"},"hoverEvent":{"action":"show_text","value":{"text":"クリックで表示"}}}'
data modify storage lang core.book.summary.medal set value '{"translate":"赤 : %s\\n青 : %s\\n黄 : %s\\b緑 : %s","with":[{"score":{"objective":"_MEDAL","name":"$r"}},{"score":{"objective":"_MEDAL","name":"$b"}},{"score":{"objective":"_MEDAL","name":"$y"}},{"score":{"objective":"_MEDAL","name":"$g"}}]}'
data modify storage lang core.book.summary.score set value '{"translate":"赤 : %s pt\\n青 : %s pt\\n黄 : %s pt\\n緑 : %s pt","with":[{"score":{"objective":"POINT","name":"$r"}},{"score":{"objective":"POINT","name":"$b"}},{"score":{"objective":"POINT","name":"$y"}},{"score":{"objective":"POINT","name":"$g"}}]}'
data modify storage lang core.book.pages append value '{"translate":"● 活躍したプレイヤー\\n\\n- 最多金メダル獲得賞\\n%s\\n（%s 個）\\n\\n- 最高得点獲得賞\\n%s\\n（%s pt）\\n\\n- %s","with":[{"selector":"@a[scores={_GOLD=1}]"},{"score":{"objective":"_MOST","name":"$gold"}},{"selector":"@a[scores={_MOST=1}]"},{"score":{"objective":"_MOST","name":"$score"}},{"interpret":true,"storage":"lang","nbt":"core.book.show.score"}]}'
data modify storage lang core.book.pages append value '{"translate":"● 成績まとめ\\n\\n- メダル総数 :\\n%s\\n\\n- チーム得点 :\\n%s\\n\\n","with":[{"interpret":true,"storage":"lang","nbt":"core.book.summary.medal"},{"interpret":true,"storage":"lang","nbt":"core.book.summary.score"}]}'
data modify storage lang core.book.pages append value '{"translate":"● 赤チームの成績\\n\\n- メダル総数 : %s 個\\n（金 : %s, 銀 : %s, 銅 : %s）\\n\\n- チーム得点 : %s pt","with":[{"score":{"objective":"_MEDAL","name":"$r"}},{"score":{"objective":"GOLD","name":"$r"}},{"score":{"objective":"SILVER","name":"$r"}},{"score":{"objective":"BRONZE","name":"$r"}},{"score":{"objective":"POINT","name":"$r"}}]}'
data modify storage lang core.book.pages append value '{"translate":"● 青チームの成績\\n\\n- メダル総数 : %s 個\\n（金 : %s, 銀 : %s, 銅 : %s）\\n\\n- チーム得点 : %s pt","with":[{"score":{"objective":"_MEDAL","name":"$b"}},{"score":{"objective":"GOLD","name":"$b"}},{"score":{"objective":"SILVER","name":"$b"}},{"score":{"objective":"BRONZE","name":"$b"}},{"score":{"objective":"POINT","name":"$b"}}]}'
data modify storage lang core.book.pages append value '{"translate":"● 黄チームの成績\\n\\n- メダル総数 : %s 個\\n（金 : %s, 銀 : %s, 銅 : %s）\\n\\n- チーム得点 : %s pt","with":[{"score":{"objective":"_MEDAL","name":"$y"}},{"score":{"objective":"GOLD","name":"$y"}},{"score":{"objective":"SILVER","name":"$y"}},{"score":{"objective":"BRONZE","name":"$y"}},{"score":{"objective":"POINT","name":"$y"}}]}'
data modify storage lang core.book.pages append value '{"translate":"● 緑チームの成績\\n\\n- メダル総数 : %s 個\\n（金 : %s, 銀 : %s, 銅 : %s）\\n\\n- チーム得点 : %s pt","with":[{"score":{"objective":"_MEDAL","name":"$g"}},{"score":{"objective":"GOLD","name":"$g"}},{"score":{"objective":"SILVER","name":"$g"}},{"score":{"objective":"BRONZE","name":"$g"}},{"score":{"objective":"POINT","name":"$g"}}]}'
## チーム戦成績本
data modify storage lang core.book.team set value '{"translate":"● 目次\\n-----\\n\\n%s\\n\\n%s\\n\\n%s\\n\\n%s\\n\\n%s\\n\\n%s\\n\\n%s","with":[{"interpret":true,"storage":"lang","nbt":"core.book.jump.summary"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.mvp"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.red"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.blue"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.yellow"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.green"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.exit"}]}'
## 個人戦成績本
data modify storage lang core.book.single set value '{"translate":"● 目次\\n-----\\n\\n%s\\n\\n%s","with":[{"interpret":true,"storage":"lang","nbt":"core.book.jump.mvp"},{"interpret":true,"storage":"lang","nbt":"core.book.jump.exit"}]}'
## 練習成績本
data modify storage lang core.book.only set value '{"translate":"● 目次\\n-----\\n\\n%s","with":[{"interpret":true,"storage":"lang","nbt":"core.book.jump.exit"}]}'

# 共有
data remove storage lang util
## メンバー選択
data modify storage lang util.select.ng set value '{"text":"[システム] 参加人数が足りていません","color":"red"}'
data modify storage lang util.select.ok set value '{"translate":"[システム] この競技の選手は %s で確定しました","with":[{"selector":"@a[predicate=util:join,scores={_TICKET=1}]"}]}'
## カウントダウン
data modify storage lang util.count.num set value '{"translate":"= %s =","with":[{"score": {"name": "$util:count","objective": "_"},"color":"yellow"}]}'
data modify storage lang util.count.start set value '{"text":"!! START !!","color":"green"}'
## メダル獲得数を表示
data modify storage lang util.score.gold set value '{"translate":"[システム] 金メダルを獲得しました"}'
data modify storage lang util.score.silver set value '{"translate":"[システム] 銀メダルを獲得しました"}'
data modify storage lang util.score.bronze set value '{"translate":"[システム] 銅メダルを獲得しました"}'
data modify storage lang util.score.medal set value '{"translate":"[システム] あなたのチームは金%s個、銀%s個、銅%s個のメダルを獲得しました","with":[{"score":{"name":"$1","objective":"_MEDAL"}},{"score":{"name":"$2","objective":"_MEDAL"}},{"score":{"name":"$3","objective":"_MEDAL"}}}]}'

# ウェイトリフティングの説明
data remove storage lang weight
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

data modify storage lang weight.retire set value '{"translate":"[実況] %s 選手が脱落しました！","with":[{"selector":"@a[predicate=util:play,scores={_LIFE=0}]"}]}'

# サッカーの説明
data remove storage lang soccer
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

data modify storage lang soccer.goal.rb set value '{"translate":"%s - %s","with":[{"color":"red","score":{"name":"$w","objective":"_"}},{"color":"blue","score":{"name":"$b","objective":"_"}}]}'
data modify storage lang soccer.goal.ry set value '{"translate":"%s - %s","with":[{"color":"red","score":{"name":"$w","objective":"_"}},{"color":"yellow","score":{"name":"$b","objective":"_"}}]}'
data modify storage lang soccer.goal.rg set value '{"translate":"%s - %s","with":[{"color":"red","score":{"name":"$w","objective":"_"}},{"color":"green","score":{"name":"$b","objective":"_"}}]}'
data modify storage lang soccer.goal.by set value '{"translate":"%s - %s","with":[{"color":"blue","score":{"name":"$w","objective":"_"}},{"color":"yellow","score":{"name":"$b","objective":"_"}}]}'
data modify storage lang soccer.goal.bg set value '{"translate":"%s - %s","with":[{"color":"blue","score":{"name":"$w","objective":"_"}},{"color":"green","score":{"name":"$b","objective":"_"}}]}'
data modify storage lang soccer.goal.yg set value '{"translate":"%s - %s","with":[{"color":"yellow","score":{"name":"$w","objective":"_"}},{"color":"green","score":{"name":"$b","objective":"_"}}]}'

# 水泳の説明
data remove storage lang swim
data modify storage lang swim.descNum set value 7
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["= 水泳 ="]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["各チーム４人で他のチームよりも速く水の中を泳ぎきる競技です。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["選手には泳ぎ始めるときに、トライデントが渡されます。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["トライデントを使うと、スピードが上がりますが、"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["一定時間、経たないと使うことができません。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["各選手は反対側の壁まで泳ぎきると、次の選手が泳げるようになります。"]}'
data modify storage lang swim.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、４人を選出してください。"]}'

data modify storage lang swim.player append value '{"translate":""}'
data modify storage lang swim.player append value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"１","color":"red"}]}'
data modify storage lang swim.player append value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"２","color":"red"}]}'
data modify storage lang swim.player append value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"３","color":"red"}]}'
data modify storage lang swim.player append value '{"translate":":: あなたは第%s泳者です ::","with":[{"text":"４","color":"red"}]}'

data modify storage lang swim.cooldown set value '{"text":":: 現在、トライデントを使えません ::","color":"red"}'

## 各選手一斉にスタート
data modify storage lang swim.start.all set value '{"text":"[実況] 各選手、一斉にスタートしました！"}'
## スタート
data modify storage lang swim.start.change set value '{"translate":"[実況] %s 選手、スタートします！","with":[{"selector":"@s"}]}'
## 全員ゴール
data modify storage lang swim.goal.r set value '{"text":"[実況] 赤チーム、ゴール！"}'
data modify storage lang swim.goal.b set value '{"text":"[実況] 青チーム、ゴール！"}'
data modify storage lang swim.goal.y set value '{"text":"[実況] 黄チーム、ゴール！"}'
data modify storage lang swim.goal.g set value '{"text":"[実況] 緑チーム、ゴール！"}'

# クレー射撃の説明
data remove storage lang clay
data modify storage lang clay.descNum set value 8
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["= クレー射撃 ="]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["奥から飛んでくるブタを撃ち抜く競技です。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["選手にはクロスボウと、２０本の矢が渡されます。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["その後にカウントダウンが始まり、"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["５秒ごとに連続で１０匹のブタが飛んできます。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["より多くのブタをクロスボウで撃ち抜いてください。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["競技台の赤の部分に降りてしまうとリタイアとなります。"]}'
data modify storage lang clay.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、２人を選出してください。"]}'

## 記録
data modify storage lang clay.record set value '{"translate":"[実況] %s 選手、記録 %s 匹です！","with":[{"selector":"@p[predicate=util:play]"},{"score":{"objective":"_KILL","name":"@p[predicate=util:play]"}}]}'

# リレーの説明
data remove storage lang relay
data modify storage lang relay.descNum set value 6
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["= リレー ="]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["各チーム４人で様々な障害物を乗り越えて２周走る競技です。"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["各選手はトラックを半周して、次の選手につなぎます。"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["トラック上にはダイヤモンドブロックと金ブロックがあり、"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["それぞれのブロックの上を通過するとスピードが上昇します。"]}'
data modify storage lang relay.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、４人を選出してください。"]}'

data modify storage lang relay.player append value '{"translate":""}'
data modify storage lang relay.player append value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"１","color":"red"}]}'
data modify storage lang relay.player append value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"２","color":"red"}]}'
data modify storage lang relay.player append value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"３","color":"red"}]}'
data modify storage lang relay.player append value '{"translate":":: あなたは第%s走者です ::","with":[{"text":"４","color":"red"}]}'

## 各選手一斉にスタート
data modify storage lang relay.start.all set value '{"text":"[実況] 各選手、一斉にスタートしました！"}'
## スタート
data modify storage lang relay.start.change set value '{"translate":"[実況] %s 選手、スタートします！","with":[{"selector":"@s"}]}'
## 全員ゴール
data modify storage lang relay.goal.r set value '{"text":"[実況] 赤チーム、ゴール！"}'
data modify storage lang relay.goal.b set value '{"text":"[実況] 青チーム、ゴール！"}'
data modify storage lang relay.goal.y set value '{"text":"[実況] 黄チーム、ゴール！"}'
data modify storage lang relay.goal.g set value '{"text":"[実況] 緑チーム、ゴール！"}'

# ドッヂの説明
data remove storage lang dodge
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

## アウト
data modify storage lang dodge.retire set value '{"translate":"[実況] %s 選手、アウト！","with":[{"selector":"@s"}]}'

# 勝ち抜き戦の説明
data remove storage lang battle
data modify storage lang battle.descNum set value 9
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["= 勝ち抜き戦 ="]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["全員参加のバトルロワイアル競技です。"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["各チームからランダムに選ばれた１人がそのラウンドに参加します。"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["各プレイヤーはノックバック付きのダイアモンド剣を所持しています。"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["リタイアさせる方法は、フィールド外に落とすか、倒すかになります。"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["フィールド中央にはエフェクトがランダムで発生しており、"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["有利になるエフェクトと不利になるエフェクトがあります。"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["他のチームの競技参加者を全員倒せば、次のラウンドが始まります。"]}'
data modify storage lang battle.desc prepend value '{"translate":"[説明] %s","with":["全員参加ですので、すぐに競技が始まります。"]}'

## 勝利
data modify storage lang battle.win set value '{"translate":"[実況] %s 選手が勝ち抜きました！","with":[{"selector":"@p[predicate=util:play]"}]}'
data modify storage lang battle.even set value '{"text":"[実況] 今の試合、引き分けです！"}'

# フェンシングの説明
data remove storage lang fenc
data modify storage lang fenc.descNum set value 7
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["= フェンシング ="]}'
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["トーナメント形式で２人ずつ戦う競技です。"]}'
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["試合が始まると、鉄の剣が渡され、カウントダウンが始まります。"]}'
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["カウントダウン中にも攻撃可能ですが、攻撃すると敗北します。"]}'
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["スタートの合図で、先に相手に攻撃を与えた選手が勝利します。"]}'
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["トーナメント形式ですので、勝った方だけが次のラウンドに進めます。"]}'
data modify storage lang fenc.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、２人を選出してください。"]}'

data modify storage lang fenc.round append value '{"translate":"一回戦 第%s試合","with":[{"score":{"name":"$phase","objective":"_"}}]}'
data modify storage lang fenc.round append value '{"translate":"準決勝 第%s試合","with":[{"score":{"name":"$phase","objective":"_"}}]}'
data modify storage lang fenc.round append value '{"text":"３位決定戦"}'
data modify storage lang fenc.round append value '{"text":"決勝戦"}'

data modify storage lang fenc.count.attack set value '{"translate":"[実況] %s 選手がフライングで失格！！","with":[{"selector":"@a[scores={_LOSER=1}]"}]}'
data modify storage lang fenc.win set value '{"translate":"[実況] %s 選手が吹き飛ばした！勝利です！","with":[{"selector":"@a[predicate=util:play,scores={_DAMAGE=0}]"}]}'

## ボートの説明
data remove storage lang boat
data modify storage lang boat.descNum set value 7
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["= ボート ="]}'
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["ボートで競技場をいち早く１周する競技です。"]}'
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["競技が始まると、ボートにすぐさま乗ってください。"]}'
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["スタートの合図で、ボートが動き始めるとともに弓が渡されます。"]}'
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["半周ごとに手に入る矢を使って、ボートを漕ぎつつ、"]}'
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["他のプレイヤーの妨害をしていきましょう。"]}'
data modify storage lang boat.desc prepend value '{"translate":"[説明] %s","with":["各チームからは、２人を選出してください。"]}'

## 個人戦
data modify storage lang boat.full.single set value '{"translate":"[実況] %s 選手、残り１周です！","with":[{"selector":"@s"}]}'
data modify storage lang boat.goal.single set value '{"translate":"[実況] %s 選手、ゴール！","with":[{"selector":"@s"}]}'
## 一周
data modify storage lang boat.full.r set value '{"text":"[実況] 赤チーム、残り１周です！"}'
data modify storage lang boat.full.b set value '{"text":"[実況] 青チーム、残り１周です！"}'
data modify storage lang boat.full.y set value '{"text":"[実況] 黄チーム、残り１周です！"}'
data modify storage lang boat.full.g set value '{"text":"[実況] 緑チーム、残り１周です！"}'
## 全員ゴール
data modify storage lang boat.goal.r set value '{"text":"[実況] 赤チーム、ゴール！"}'
data modify storage lang boat.goal.b set value '{"text":"[実況] 青チーム、ゴール！"}'
data modify storage lang boat.goal.y set value '{"text":"[実況] 黄チーム、ゴール！"}'
data modify storage lang boat.goal.g set value '{"text":"[実況] 緑チーム、ゴール！"}'

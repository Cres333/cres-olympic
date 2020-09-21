# Minecraft の Gamerule 設定一覧 (v1.16)

# チェインコマンドが何個まで一度に実行されるか (functionファイル内のコマンド数含む)
## 場合によっては、小さな値に設定されている可能性があるため、最初に実行
## 初期値：65536
gamerule maxCommandChainLength 65536

# チャット欄で進捗を開放した時に、テキストチャットにメッセージを出すかどうか (右上の通知は消せない)
## 初期値：true
gamerule announceAdvancements false

# コマンドブロックを実行したときのログを表示するかどうか
## 初期値：true
gamerule commandBlockOutput false

# サーバーでエリトラで飛んでいるプレイヤーの速度をチェックしないかどうか
## 初期値：false
gamerule disableElytraMovementCheck true

# 村の襲撃イベントを無効にするかどうか
## 初期値：false
gamerule disableRaids true

# 時間（太陽と月の動き）が進むかどうか
## 初期値：true
gamerule doDaylightCycle false

# モブ以外のエンティティを壊した時にアイテムを落とすかどうか
## falseの場合、額縁からアイテムが外せなくなる
## 初期値：true
gamerule doEntityDrops false

# 炎が燃え広がり、自然に火が消えるかどうか
## 初期値：true
gamerule doFireTick false

# 死亡画面を出さずに、すぐにリスポーンさせるかどうか
## 初期値：false
gamerule doImmediateRespawn true

# 夜にファントムがスポーンするかどうか
## ファントムは夜などに、3日間以上ベッドに入っていないプレイヤーの上にスポーンする
## 初期値：true
gamerule doInsomnia false

# アンロックしたレシピだけをクラフトできるようにするかどうか
## 初期値：false
gamerule doLimitedCrafting true

# モブがアイテムを落とすかどうか
## 初期値：true
gamerule doMobLoot false

# モブが自然にスポーンするかどうか
## 初期値：true
gamerule doMobSpawning false

# 略奪隊がスポーンするかどうか
## 略奪隊はヴィンディケーターとピリジャーで構成された集団
## 初期値：true
gamerule doPatrolSpawning false

# ブロックを壊した時にアイテムを落とすかどうか
## falseでもチェストなどは中身のアイテムだけ落とす(シュルカーボックスは中身ごと消える)
## 初期値：true
gamerule doTileDrops false

# 行商人がスポーンするかどうか
## 初期値：true
gamerule doTraderSpawning false

# 天候（晴れ、雨、雷雨）が自然に変化するかどうか
## 初期値：true
gamerule doWeatherCycle false

# プレイヤーが溺れたときにダメージを受けるかどうか
## 酸素ゲージは減っていく
## 初期値：true
gamerule drowningDamage false

# プレイヤーが落下ダメージを受けるかどうか
## 初期値：true
gamerule fallDamage false

# プレイヤーが炎によるダメージを受けるかどうか
## 初期値：true
gamerule fireDamage false

# 中立モブが怒っている状態で対象のプレイヤーが倒れると怒らなくなるかどうか
## 初期値：true
gamerule forgiveDeadPlayers true

# プレイヤーが死んでもインベントリのアイテムや経験値を残すかどうか
## 体力と空腹値は回復する
## 初期値：false
gamerule keepInventory true

# 管理者コマンドをサーバーに記録するかどうか
## 初期値：true
gamerule logAdminCommands false

# モブやプレイヤーが1ブロック以内に何体いたら窒息ダメージを受けるか
## 0にすると何体いても窒息ダメージを受けない
## 初期値：24
gamerule maxEntityCramming 0

# モブが行動することでブロックを変更、アイテムを拾うかどうか
## 村人の繁殖も同じくこの設定
## 畑を荒らされることもなくなる(プレイヤーは荒らせる)
## 初期値：true
gamerule mobGriefing false

# 空腹度が満たされている時に、自然に体力を回復するかどうか
## 初期値：true
gamerule naturalRegeneration true

# 何Tickごとにランダムで植物の成長させるか
## 0Tickだと成長させない
## 初期値：3
gamerule randomTickSpeed 0

# デバッグ画面(F3)にすべての情報を表示するかどうか
## 座標や方角など見せたくない場合はfalse推奨
## ヒットボックス表示(F3+B)やチャンク境界標示(F3+G)も含む
## 初期値：false
# gamerule reducedDebugInfo true

# プレイヤーが実行したコマンドをテキストチャットに表示するかどうか
## 初期値：true
gamerule sendCommandFeedback false

# プレイヤーが死んだ時にテキストチャットにメッセージを表示するかどうか
## 初期値：true
gamerule showDeathMessages false

# マルチでのワールドログイン時や、スポーンポイントが設定されていないプレイヤーが
## ワールドスポーン地点でスポーンする範囲
## 0だとワールドスポーン地点のジャストその場所
## 初期値：10
gamerule spawnRadius 0

# スペクテイターモードのプレイヤーがチャンクを生成できるかどうか
## 初期値：true
gamerule spectatorsGenerateChunks true

# 怒っている中立モブが、怒っている対象付近のプレイヤーにも攻撃するかどうか
## 初期値：false
gamerule universalAnger false

# 難易度を何にするか
# 値：peaceful | easy | normal | hard
# difficulty peaceful

# マルチでログイン時にプレイヤーのゲームモードを何にするか
# 値：survival | creative | adventure | spectator
defaultgamemode adventure

# 全プレイヤーのゲームモードを変更する
# gamemode adventure @a

# ワールドのスポーン地点を設定する
# setworldspawn 0 60 0

# 全プレイヤーのスポーン地点を設定する
# spawnpoint @a 0 60 0

# 現在の時刻を設定する
## 値：day | noon | night | midnight | tick数
## 6000(tick)は太陽が真上に来る時間
time set 6000

# 現在の天候を設定する
## 値：clear | rain | thunder
weather clear

# ワールドの境界を設定する
# worldborder center 0 0
# worldborder set 10000
# worldborder damage amount 0

# 強制的に読み込ませるチャンクを設定する
## あまりにも量を増やすと重くなるので注意
## モブの行動や光源処理が走るところに使うと重くなるので注意
# forceload remove all
# forceload add 0 0 48 48

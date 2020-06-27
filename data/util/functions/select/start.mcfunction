# メンバー選出
## チーム戦
## 勝ち抜きのみチーム戦でも、選出方法を変える
execute if data storage main {mode:multi} if data storage main {game:battle} run function util:select/single
execute if data storage main {mode:multi} unless data storage main {game:battle} run function util:select/member

## チーム戦以外
execute unless data storage main {mode:multi} run function util:select/single

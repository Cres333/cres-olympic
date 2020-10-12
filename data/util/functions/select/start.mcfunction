# メンバー選出
## チーム戦
execute if data storage main {mode:multi} run function util:select/member

## チーム戦以外
execute unless data storage main {mode:multi} unless data storage main {mode:draft} run function util:select/single

## 下見モード
execute if data storage main {mode:draft} run function util:select/draft

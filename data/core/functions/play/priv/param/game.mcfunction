# ストレージに競技を設定
## チーム戦必須のゲーム
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"battle"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"dodge"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"relay"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"soccer"}]
execute unless data storage main {mode:multi} run data remove storage play games[{"type":"swim"}]

## 4人以上必須のゲーム
execute unless score $core:minNum _ matches 4.. run data remove storage play games[{"type":"relay"}]
execute unless score $core:minNum _ matches 4.. run data remove storage play games[{"type":"soccer"}]
execute unless score $core:minNum _ matches 4.. run data remove storage play games[{"type":"swim"}]

## 3人以上必須のゲーム
execute unless score $core:minNum _ matches 3.. run data remove storage play games[{"type":"dodge"}]

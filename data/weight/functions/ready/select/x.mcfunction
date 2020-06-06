# チーム戦
execute if data storage main {mode:multi} run function x:id/multi/join

# チーム戦以外
execute unless data storage main {mode:multi} run function x:id/single/join

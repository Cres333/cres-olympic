# チェストが閉じるのを待つ
execute if block 1269 44 -1345 redstone_lamp[lit=false] run function core:setting/wait/check
execute if block 1269 44 -1345 redstone_lamp[lit=false] run function core:setting/start
execute if block 1269 44 -1345 redstone_lamp[lit=true] run schedule function core:setting/wait/opening 1t

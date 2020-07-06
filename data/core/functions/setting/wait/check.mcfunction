# チェストが開かれるのを待つ
execute if block 1269 44 -1345 redstone_lamp[lit=true] run function core:setting/wait/opening
execute if block 1269 44 -1345 redstone_lamp[lit=false] run schedule function core:setting/wait/check 1s

# 設定用アイテムの入手
## separator
give @p barrier{settingItem:true,display:{Name:'{"text":"----"}'}}

## game
give @p red_wool{settingItem:true,game:{type:clay},display:{Name:'{"text":"クレー射撃"}',Lore:['{"text":"チーム戦・個人戦"}','{"text":"各チーム最低２人"}']}}
give @p blue_wool{settingItem:true,game:{type:boat},display:{Name:'{"text":"ボートレース"}',Lore:['{"text":"チーム戦・個人戦"}','{"text":"各チーム最低２人"}']}}
give @p yellow_wool{settingItem:true,game:{type:soccer},display:{Name:'{"text":"サッカー"}',Lore:['{"text":"チーム戦限定"}','{"text":"各チーム最低４人"}']}}
give @p green_wool{settingItem:true,game:{type:fenc},display:{Name:'{"text":"フェンシング"}',Lore:['{"text":"チーム戦・個人戦"}','{"text":"各チーム最低２人"}']}}
give @p pink_wool{settingItem:true,game:{type:swim},display:{Name:'{"text":"水泳"}',Lore:['{"text":"チーム戦限定"}','{"text":"各チーム最低４人"}']}}
give @p cyan_wool{settingItem:true,game:{type:dodge},display:{Name:'{"text":"ドッヂボール"}',Lore:['{"text":"チーム戦限定"}','{"text":"各チーム最低３人"}']}}
give @p orange_wool{settingItem:true,game:{type:weight},display:{Name:'{"text":"ウェイトリフティング"}',Lore:['{"text":"チーム戦・個人戦"}','{"text":"各チーム最低２人"}']}}
give @p lime_wool{settingItem:true,game:{type:battle},display:{Name:'{"text":"勝ち抜き戦"}',Lore:['{"text":"チーム戦限定"}','{"text":"各チーム全員参加"}']}}
give @p purple_wool{settingItem:true,game:{type:relay},display:{Name:'{"text":"リレー"}',Lore:['{"text":"チーム戦限定"}','{"text":"各チーム最低４人"}']}}

## banner
give @p red_banner{settingItem:true,display:{Name:'{"text":"第1競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:cs,Color:0},{Pattern:tl,Color:0},{Pattern:cbo,Color:14},{Pattern:bs,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第2競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:ts,Color:0},{Pattern:mr,Color:14},{Pattern:bs,Color:0},{Pattern:dls,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第3競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:bs,Color:0},{Pattern:ms,Color:0},{Pattern:ts,Color:0},{Pattern:cbo,Color:14},{Pattern:rs,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第4競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:ls,Color:0},{Pattern:hhb,Color:14},{Pattern:rs,Color:0},{Pattern:ms,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第5競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:bs,Color:0},{Pattern:mr,Color:14},{Pattern:ts,Color:0},{Pattern:drs,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第6競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:bs,Color:0},{Pattern:rs,Color:0},{Pattern:hh,Color:14},{Pattern:ms,Color:0},{Pattern:ts,Color:0},{Pattern:ls,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第7競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:dls,Color:0},{Pattern:ts,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第8競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:ts,Color:0},{Pattern:ls,Color:0},{Pattern:ms,Color:0},{Pattern:bs,Color:0},{Pattern:rs,Color:0},{Pattern:bo,Color:14}]}}
give @p red_banner{settingItem:true,display:{Name:'{"text":"第9競技"}'},HideFlags:63,BlockEntityTag:{Patterns:[{Pattern:ls,Color:0},{Pattern:hhb,Color:14},{Pattern:ms,Color:0},{Pattern:ts,Color:0},{Pattern:rs,Color:0},{Pattern:bs,Color:0},{Pattern:bo,Color:14}]}}

## reset sign
give @p birch_sign{BlockEntityTag:{Text2:'{"text":"競技を初期化する"}',Text3:'{"text":"右クリックで実行","clickEvent":{"action":"run_command","value":"/function core:setting/init"}}'}}

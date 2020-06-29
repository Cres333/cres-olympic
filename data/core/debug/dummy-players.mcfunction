# デバッグ用のダミープレイヤーを用意
## 試したい競技の@a/@pを@e/@p[limit=1]にしておくこと
## 初期化
kill @e[tag=dummy]

## 召喚
summon villager ~0 ~ ~1 {NoAI:true,Tags:["dummy"],Team:"r",Silent:true,Offers:{},VillagerData:{type:"plains"}}
summon villager ~0 ~ ~2 {NoAI:true,Tags:["dummy"],Team:"r",Silent:true,Offers:{},VillagerData:{type:"plains"}}
summon villager ~0 ~ ~3 {NoAI:true,Tags:["dummy"],Team:"r",Silent:true,Offers:{},VillagerData:{type:"plains"}}
summon villager ~0 ~ ~4 {NoAI:true,Tags:["dummy"],Team:"r",Silent:true,Offers:{},VillagerData:{type:"plains"}}

summon villager ~1 ~ ~1 {NoAI:true,Tags:["dummy"],Team:"b",Silent:true,Offers:{},VillagerData:{type:"desert"}}
summon villager ~1 ~ ~2 {NoAI:true,Tags:["dummy"],Team:"b",Silent:true,Offers:{},VillagerData:{type:"desert"}}
summon villager ~1 ~ ~3 {NoAI:true,Tags:["dummy"],Team:"b",Silent:true,Offers:{},VillagerData:{type:"desert"}}
summon villager ~1 ~ ~4 {NoAI:true,Tags:["dummy"],Team:"b",Silent:true,Offers:{},VillagerData:{type:"desert"}}

summon villager ~2 ~ ~1 {NoAI:true,Tags:["dummy"],Team:"y",Silent:true,Offers:{},VillagerData:{type:"jungle"}}
summon villager ~2 ~ ~2 {NoAI:true,Tags:["dummy"],Team:"y",Silent:true,Offers:{},VillagerData:{type:"jungle"}}
summon villager ~2 ~ ~3 {NoAI:true,Tags:["dummy"],Team:"y",Silent:true,Offers:{},VillagerData:{type:"jungle"}}
summon villager ~2 ~ ~4 {NoAI:true,Tags:["dummy"],Team:"y",Silent:true,Offers:{},VillagerData:{type:"jungle"}}

summon villager ~3 ~ ~1 {NoAI:true,Tags:["dummy"],Team:"g",Silent:true,Offers:{},VillagerData:{type:"snow"}}
summon villager ~3 ~ ~2 {NoAI:true,Tags:["dummy"],Team:"g",Silent:true,Offers:{},VillagerData:{type:"snow"}}
summon villager ~3 ~ ~3 {NoAI:true,Tags:["dummy"],Team:"g",Silent:true,Offers:{},VillagerData:{type:"snow"}}
summon villager ~3 ~ ~4 {NoAI:true,Tags:["dummy"],Team:"g",Silent:true,Offers:{},VillagerData:{type:"snow"}}

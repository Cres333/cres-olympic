# プレイヤー処理
## 地面についていたら空に飛ばす
execute as @a[predicate=util:play,nbt={OnGround:true}] at @s run function sky:sys/priv/refly

## 場外に行ったら戻す
execute as @a[predicate=util:play] at @s if block ~ 30 ~ air run function sky:sys/priv/refly

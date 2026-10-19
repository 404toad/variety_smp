effect give KANGAROO7145 night_vision infinite 255 true

execute as @a store result score @s diamonds run clear @s diamond 0
execute as @a store result score @s netherite run clear @s netherite_ingot 0
execute as @a store result score @s elytra run clear @s elytra 0
execute as @a store result score @s iron run clear @s iron_ingot 0


#atm
scoreboard players enable @a atm_dn
scoreboard players enable @a atm_de
scoreboard players enable @a atm_ed
scoreboard players enable @a atm_en
scoreboard players enable @a atm_nd
scoreboard players enable @a atm_ne
#shop
scoreboard players enable @a shop_pearl
scoreboard players enable @a shop_rocket
scoreboard players enable @a shop_unbreakable
scoreboard players enable @a shop_shovel
scoreboard players enable @a shop_8ball
scoreboard players enable @a shop_carrier
#cosmetics
scoreboard players enable @a cos_orphan
scoreboard players enable @a cos_santa
scoreboard players enable @a cos_cat
scoreboard players enable @a cos_emerald
scoreboard players enable @a cos_key
#spawners
scoreboard players enable @a shop_cow
scoreboard players enable @a shop_pig
scoreboard players enable @a shop_sheep
scoreboard players enable @a shop_zombie
scoreboard players enable @a shop_skeleton
scoreboard players enable @a shop_creeper
scoreboard players enable @a shop_villager
#

#ender pearl
execute as @a[tag=!reward_pearl] run clear @s ender_pearl[custom_data={reward_pearl:true}]
execute as @a[tag=reward_pearl] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{reward_pearl:true}}}]}] unless entity @s[nbt={SelectedItem:{}}] run function v-smp:reward/infinite_pearls
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{reward_pearl:true}}}}]


#firework rocket
execute as @a[tag=!reward_rocket] run clear @s firework_rocket[custom_data={reward_rocket:true}]
execute as @a[tag=reward_rocket] unless entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{reward_rocket:true}}}]}] unless entity @s[nbt={SelectedItem:{}}] run function v-smp:reward/infinite_rocket
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{reward_rocket:true}}}}]



#dragon egg replace
item replace entity @a[nbt={SelectedItem:{id:"minecraft:dragon_egg"}}] weapon with poisonous_potato[!food,custom_data={reward_dragon_egg:true},item_name="Dragon Egg",rarity=epic,lore=[{text:'-----------',color:"dark_gray",italic:0b,obfuscated:1b},{text:"Reward Item",color:gold}],item_model="dragon_egg",consumable={has_consume_particles:0b,consume_seconds:0,sound:{sound_id:""}},use_cooldown={seconds:5}]
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{reward_dragon_egg:true}}}}] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.1 1

#mace
execute as @a run function v-smp:reward/mace
execute as @e[type=item,nbt={Item:{id:"minecraft:mace"}}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,nbt={Item:{id:"minecraft:mace"}}] run data merge entity @s {Age:0}

#spawners
execute at @e[tag=spawner.villager] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.villager],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}
execute at @e[tag=spawner.zombie] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.zombie],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}
execute at @e[tag=spawner.skeleton] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.skeleton],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}
execute at @e[tag=spawner.creeper] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.creeper],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}
execute at @e[tag=spawner.cow] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.cow],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}
execute at @e[tag=spawner.sheep] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.sheep],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}
execute at @e[tag=spawner.pig] if block ~ ~ ~ air run summon minecraft:interaction ~ ~ ~ {Tags:[spawner.remove.pig],height:1.1,width:1.1,CustomName:[{text:"[",color:red},{keybind:"key.use",color:"red"},{text:"] REMOVE",color:"red"}]}




execute at @e[tag=spawner.villager] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~
execute at @e[tag=spawner.zombie] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~
execute at @e[tag=spawner.skeleton] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~
execute at @e[tag=spawner.creeper] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~
execute at @e[tag=spawner.cow] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~
execute at @e[tag=spawner.sheep] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~
execute at @e[tag=spawner.pig] if block ~ ~ ~ air run playsound block.spawner.place master @a ~ ~ ~


execute at @e[tag=spawner.villager] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:villager"}},SpawnPotentials:[],SpawnRange:4s}
execute at @e[tag=spawner.zombie] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:zombie"}},SpawnPotentials:[],SpawnRange:4s}
execute at @e[tag=spawner.skeleton] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:skeleton"}},SpawnPotentials:[],SpawnRange:4s}
execute at @e[tag=spawner.creeper] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:creeper"}},SpawnPotentials:[],SpawnRange:4s}
execute at @e[tag=spawner.cow] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:cow"}},SpawnPotentials:[],SpawnRange:4s}
execute at @e[tag=spawner.sheep] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:sheep"}},SpawnPotentials:[],SpawnRange:4s}
execute at @e[tag=spawner.pig] if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:spawner{Delay:110s,MaxNearbyEntities:6s,MaxSpawnDelay:800s,MinSpawnDelay:200s,RequiredPlayerRange:16s,SpawnCount:4s,SpawnData:{entity:{id:"minecraft:pig"}},SpawnPotentials:[],SpawnRange:4s}



execute as @e[tag=spawner.remove.villager] at @s if entity @n[tag=spawner.villager] on target run function v-smp:shop/spawner/remove {id:villager,rarity:"epic",name:"Villager"}
execute as @e[tag=spawner.remove.zombie] at @s if entity @n[tag=spawner.zombie] on target run function v-smp:shop/spawner/remove {id:zombie,rarity:"common",name:"Zombie"}
execute as @e[tag=spawner.remove.skeleton] at @s if entity @n[tag=spawner.skeleton] on target run function v-smp:shop/spawner/remove {id:skeleton,rarity:"uncommon",name:"Skeleton"}
execute as @e[tag=spawner.remove.creeper] at @s if entity @n[tag=spawner.creeper] on target run function v-smp:shop/spawner/remove {id:creeper,rarity:"epic",name:"Creeper"}
execute as @e[tag=spawner.remove.cow] at @s if entity @n[tag=spawner.cow] on target run function v-smp:shop/spawner/remove {id:cow,rarity:"rare",name:"Cow"}
execute as @e[tag=spawner.remove.sheep] at @s if entity @n[tag=spawner.sheep] on target run function v-smp:shop/spawner/remove {id:sheep,rarity:"common",name:"Sheep"}
execute as @e[tag=spawner.remove.pig] at @s if entity @n[tag=spawner.pig] on target run function v-smp:shop/spawner/remove {id:pig,rarity:"rare",name:"Pig"}

#mudwing
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_name":"❤ Mudwing ❤"}}}] run item modify entity @s weapon {function:"minecraft:set_components",components:{item_model:"netherite_sword",custom_name:{text:"Netherite Sword",italic:false}}}


#unbreakable
execute as @e[type=item,nbt={Item:{components:{"minecraft:enchantments":{"v-smp:unbreakable":1}}}}] run data modify entity @s Invulnerable set value true
execute as @e[type=item,nbt={Item:{components:{"minecraft:enchantments":{"v-smp:unbreakable":1}}}}] run data modify entity @s Age set value 0


execute as @a[scores={shop_pearl=1},nbt={Inventory:[{id:"minecraft:elytra"}]}] run function v-smp:shop/shop_pearl
execute as @a[scores={shop_rocket=1},nbt={Inventory:[{id:"minecraft:elytra"}]}] run function v-smp:shop/shop_rocket
execute as @a[scores={shop_unbreakable=1,diamonds=64..}] run function v-smp:shop/shop_unbreakable
execute as @a[scores={shop_shovel=1,diamonds=32..}] run function v-smp:shop/shop_shovel
execute as @a[scores={shop_8ball=1,diamonds=16..}] run function v-smp:shop/shop_8ball
execute as @a[scores={shop_cow=1,netherite=2..}] run function v-smp:shop/spawner/cow
execute as @a[scores={shop_pig=1,netherite=2..}] run function v-smp:shop/spawner/pig
execute as @a[scores={shop_sheep=1,netherite=1..}] run function v-smp:shop/spawner/sheep
execute as @a[scores={shop_zombie=1,netherite=1..}] run function v-smp:shop/spawner/zombie
execute as @a[scores={shop_skeleton=1,netherite=2..}] run function v-smp:shop/spawner/skeleton
execute as @a[scores={shop_creeper=1,netherite=5..}] run function v-smp:shop/spawner/creeper
execute as @a[scores={shop_villager=1,netherite=10..}] run function v-smp:shop/spawner/villager
execute as @a[scores={shop_carrier=1,diamonds=1..}] run function v-smp:shop/shop_carrier

execute as @a[scores={cos_orphan=1..,diamonds=20..}] run function v-smp:shop/cosmetics/shop_orphan
execute as @a[scores={cos_santa=1..,iron=10..}] run function v-smp:shop/cosmetics/shop_santa
execute as @a[scores={cos_cat=1..,diamonds=5..}] run function v-smp:shop/cosmetics/shop_cat
execute as @a[scores={cos_emerald=1..,diamonds=10..}] run function v-smp:shop/cosmetics/shop_emerald
execute as @a[scores={cos_key=1..,diamonds=10..}] run function v-smp:shop/cosmetics/key

scoreboard players set @a click 0
execute as @e[tag=cos_stand] at @s unless block ~ ~ ~ vault run setblock ~ ~ ~ minecraft:vault{config:{key_item:{id:"minecraft:trial_key",components:{custom_data:{coskey:1b},item_model:"variety:cosmetic_key",item_name:"Cosmetic Key",rarity:rare}},loot_table:"v-smp:cosmetics"}}
execute as @e[tag=cos_stand] at @s if data block ~ ~ ~ server_data.rewarded_players[] if block ~ ~ ~ vault[vault_state=inactive] run data modify block ~ ~ ~ server_data.rewarded_players set value []

execute as @a[scores={atm_dn=1,diamonds=32..}] run function v-smp:atm/main {input:"diamond",output:"netherite_ingot",i:"32",o:"1"}
execute as @a[scores={atm_de=1,diamonds=32..}] run function v-smp:atm/main {input:"diamond",i:"32",output:"elytra",o:"1"}

execute as @a[scores={atm_ed=1,elytra=1..}] run function v-smp:atm/main {input:"elytra",i:"1",output:"diamond",o:"32"}
execute as @a[scores={atm_en=1,elytra=1..}] run function v-smp:atm/main {input:"elytra",i:"1",output:"netherite_ingot",o:"1"}

execute as @a[scores={atm_nd=1,netherite=1..}] run function v-smp:atm/main {input:"netherite_ingot",i:"1",output:"diamond",o:"32"}
execute as @a[scores={atm_ne=1,netherite=1..}] run function v-smp:atm/main {input:"netherite_ingot",i:"1",output:"elytra",o:"1"}



scoreboard players set @a atm_dn 0
scoreboard players set @a atm_de 0

scoreboard players set @a atm_nd 0
scoreboard players set @a atm_ne 0

scoreboard players set @a atm_en 0
scoreboard players set @a atm_ed 0

scoreboard players set @a shop_unbreakable 0
scoreboard players set @a shop_pearl 0
scoreboard players set @a shop_rocket 0
scoreboard players set @a shop_shovel 0
scoreboard players set @a shop_8ball 0
scoreboard players set @a shop_cow 0
scoreboard players set @a shop_pig 0
scoreboard players set @a shop_sheep 0
scoreboard players set @a shop_zombie 0
scoreboard players set @a shop_skeleton 0
scoreboard players set @a shop_creeper 0
scoreboard players set @a shop_villager 0
scoreboard players set @a shop_carrier 0

execute as @a if score @s cos_orphan matches 1.. run scoreboard players remove @s cos_orphan 1
execute as @a if score @s cos_santa matches 1.. run scoreboard players remove @s cos_santa 1
execute as @a if score @s cos_cat matches 1.. run scoreboard players remove @s cos_cat 1
execute as @a if score @s cos_emerald matches 1.. run scoreboard players remove @s cos_emerald 1
execute as @a if score @s cos_key matches 1.. run scoreboard players remove @s cos_key 1


recipe give @a *

tellraw @a[scores={update=..1}] ["\n",{atlas:"minecraft:gui",sprite:"minecraft:icon/news"},{text:" New Server Update! ",color:green},{atlas:"minecraft:gui",sprite:"minecraft:icon/news"},"\n",{text:"Click here to view patch notes to see what changed!",color:gold,click_event:{action:show_dialog,dialog:"v-smp:patchnotes/26.10.18"},bold:true},"\n"]
scoreboard players reset @s update
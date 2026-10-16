data modify storage v-smp:temp input.mob set from entity @n[nbt={equipment:{head:{components:{"minecraft:custom_data":{carrier:true}}}}}]
tp @n[nbt={equipment:{head:{components:{"minecraft:custom_data":{carrier:true}}}}}] ~ ~-10000000 ~
data remove storage v-smp:temp input.mob.equipment.head
execute if data storage v-smp:temp input.mob.CustomName run scoreboard players set @s name 1
execute unless data storage v-smp:temp input.mob.CustomName run scoreboard players set @s name 0

execute if score @s name matches 1 run function v-smp:reward/carrier/give/name/chicken with storage v-smp:temp input.mob
execute if score @s name matches 0 run data remove storage v-smp:temp input.mob.CustomName
execute if score @s name matches 0 run function v-smp:reward/carrier/give/chicken with storage v-smp:temp input.mob

item replace entity @n[nbt={equipment:{head:{components:{"minecraft:custom_data":{carrier:true}}}}}] armor.head with air

data remove storage v-smp:temp input.mob
advancement revoke @s only v-smp:carrier/chicken
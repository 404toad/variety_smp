summon minecraft:armor_stand ~ ~ ~ {Tags:[from]}
execute store result entity @n[tag=from] Rotation double 1 run data get entity @s
execute as @p[distance=..15] run tag @s add point
execute as @p[tag=point] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:[to]}
execute as @p[tag=point] at @s store result entity @n[tag=to] Rotation double 1 run data get entity @s

tp @s @n[tag=to]
execute as @p[tag=point] run tp @s @n[tag=from]

kill @e[tag=from]
kill @e[tag=to]

playsound minecraft:entity.player.teleport master @a ~ ~ ~
execute at @p[tag=point] run playsound minecraft:entity.player.teleport master @a ~ ~ ~

tag @p[tag=point] remove point
give @s poisonous_potato[!food,custom_data={reward_dragon_egg:true},item_name="Dragon Egg",rarity=epic,lore=[{text:'-----------',color:"dark_gray",italic:0b,obfuscated:1b},{text:"Reward Item",color:gold}],item_model="dragon_egg",consumable={has_consume_particles:0b,consume_seconds:0,sound:{sound_id:""}},use_cooldown={seconds:5}]


advancement revoke @s only v-smp:dragon_egg

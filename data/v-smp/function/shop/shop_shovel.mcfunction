clear @s minecraft:diamond 32
advancement grant @s only v-smp:shop_open
give @s minecraft:golden_shovel[item_name="Speedy Shovel",rarity=rare,enchantments={efficiency:10},max_damage=1015]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
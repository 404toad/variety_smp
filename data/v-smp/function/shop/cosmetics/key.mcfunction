clear @s diamond 10
advancement grant @s only v-smp:shop_open
give @s minecraft:trial_key[custom_data={coskey:1b},item_model="variety:cosmetic_key",item_name="Cosmetic Key",rarity=rare]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
clear @s diamond 64
advancement grant @s only v-smp:shop_open
give @s enchanted_book[stored_enchantments={"v-smp:unbreakable":1}]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
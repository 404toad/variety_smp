clear @s diamond 20
advancement grant @s only v-smp:shop_open
give @s command_block[item_name="Orphan Slayer",item_model="variety:orphanite_cosmetic",rarity=uncommon,lore=[{text:"----------------",color:dark_gray,italic:0b},{text:"Cosmetic Upgrade",color:gray,italic:0b}]]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
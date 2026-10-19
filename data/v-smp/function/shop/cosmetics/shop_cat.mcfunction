clear @s diamond 5
advancement grant @s only v-smp:shop_open
give @s jigsaw[item_name="Cat Suit",item_model="variety:fuzzy_cosmetic",rarity=uncommon,lore=[{text:"----------------",color:dark_gray,italic:0b},{text:"Cosmetic Upgrade",color:gray,italic:0b}]]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
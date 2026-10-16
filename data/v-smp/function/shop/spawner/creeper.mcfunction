clear @s netherite_ingot 5
advancement grant @s only v-smp:shop_open
give @s minecraft:bat_spawn_egg[entity_data={id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["spawner.creeper","spawner"]},item_model="minecraft:spawner",item_name="Creeper Spawner",rarity=epic]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
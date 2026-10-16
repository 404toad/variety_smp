clear @s netherite_ingot 2
advancement grant @s only v-smp:shop_open
give @s minecraft:bat_spawn_egg[entity_data={id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["spawner.cow","spawner"]},item_model="minecraft:spawner",item_name="Cow Spawner",rarity=rare]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
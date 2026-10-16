clear @s diamond 16
advancement grant @s only v-smp:shop_open
give @s poisonous_potato[item_name="Magic 8-Ball",item_model="variety:eightball",rarity=common,max_stack_size=2,!food,consumable={consume_seconds:0,sound:{sound_id:"minecraft:block.note_block.pling"},has_consume_particles:0b},enchantment_glint_override=true,custom_data={eball:true},use_cooldown={seconds:30}]
tellraw @s ["\n",{text:"Item Purchased! ",color:green,bold:true},{atlas:"minecraft:gui",sprite:"icon/checkmark"},"\n"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
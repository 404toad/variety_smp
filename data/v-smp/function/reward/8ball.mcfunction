# 1. Roll the numbers
execute store result score @s effect_id run random value 0..39
function v-smp:effect_8ball
execute store result score @s effect_id run random value 0..39
function v-smp:effect_8ball
execute store result score @s effect_id run random value 0..39
function v-smp:effect_8ball
give @s poisonous_potato[item_name="Magic 8-Ball",item_model="variety:eightball",rarity=common,max_stack_size=2,!food,consumable={consume_seconds:0,sound:{sound_id:"minecraft:block.note_block.pling"},has_consume_particles:0b},enchantment_glint_override=true,custom_data={eball:true},use_cooldown={seconds:30}]

advancement revoke @s only v-smp:8ball

clear @s diamond 1
advancement grant @s only v-smp:shop_open
give @s minecraft:poisonous_potato[!food,!consumable,custom_data={carrier:true},item_name="Animal Carrier",equippable={slot:head,allowed_entities:[pig,sheep,cow,horse,chicken],swappable:true,equip_on_interact:true},rarity=uncommon,item_model="minecraft:creeper_banner_pattern"]
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~
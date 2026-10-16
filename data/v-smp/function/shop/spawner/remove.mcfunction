swing @s mainhand
playsound block.spawner.break master @a ~ ~ ~
setblock ~ ~ ~ air
$summon item ~ ~1 ~ {Item:{id:"minecraft:bat_spawn_egg",components:{"minecraft:entity_data":{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["spawner.$(id)","spawner"]},item_model:"minecraft:spawner",item_name:"$(name) Spawner",rarity:$(rarity)}}}

$kill @n[tag=spawner.$(id)]
$kill @n[tag=spawner.remove.$(id)]
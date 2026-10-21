item modify entity @s armor.head {function:"set_components",components:{"!trim":{}}}
item modify entity @s armor.chest {function:"set_components",components:{"!trim":{}}}
item modify entity @s armor.legs {function:"set_components",components:{"!trim":{}}}
item modify entity @s armor.feet {function:"set_components",components:{"!trim":{}}}
tellraw @s [{text:"Armor trims removed! ",bold:1b,color:green},{atlas:"items",sprite:"item/silence_armor_trim_smithing_template"}]
playsound block.note_block.chime master @s ~ ~ ~
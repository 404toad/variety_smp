execute as @a run scoreboard players operation @s finalplaytime = @s playtime
execute as @a run scoreboard players operation @s finalplaytime /= #h mult

tellraw @p[tag=!jail] [{text:''}]
tellraw @p[tag=!jail] [{text:''}]
$tellraw @p[tag=!jail] [{text:'====',color:"dark_gray"},{text:'$(player)',color:$(color)},{text:'====',color:"dark_gray"}]
tellraw @p[tag=!jail] [{text:''}]
$tellraw @p[tag=!jail] [{text:'Player Kills: ',color:red},{score:{objective:kills,name:$(player)},color:green}]
$tellraw @p[tag=!jail] [{text:'Deaths: ',color:gold},{score:{objective:death,name:$(player)},color:green}]
$tellraw @p[tag=!jail] [{text:'Total Playtime: ',color:dark_aqua},{score:{objective:finalplaytime,name:$(player)},color:green},{text:'hrs',color:green}]
$tellraw @p[tag=!jail] [{text:'Mob Kills: ',color:gold},{score:{objective:mob_kills,name:$(player)},color:green}]
tellraw @p[tag=!jail] [{text:''}]
tellraw @p[tag=!jail] [{text:'==================',color:"dark_gray"}]
tellraw @p[tag=!jail] [{text:''}]

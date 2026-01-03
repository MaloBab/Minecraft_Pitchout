execute as @a[team=hub,scores={play=1..},limit=1] run scoreboard players add @s titre 1
execute if entity @a[scores={play=1..,titre=2..20}] run title @a title {"text":"3","color":"green"}
execute if entity @a[scores={play=1..,titre=21..40}] run title @a title {"text":"2","color":"gold"}
execute if entity @a[scores={play=1..,titre=41..60}] run title @a title {"text":"1","color":"red"}
execute if entity @a[scores={play=1..,titre=61..63}] run title @a clear
execute if entity @a[scores={titre=65..}] run scoreboard players set debut timer 1

execute if entity @a[scores={play=1..,titre=65..}] run scoreboard players set @a play 0
execute as @a[scores={titre=65..}] run scoreboard players set @s titre 0
execute if entity @a[scores={play=1..,titre=2..65}] run execute if score select map matches 1 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Desert Arena ","color":"gold"},{"text":"A","obfuscated":true,"color":"dark_red"}]
execute if entity @a[scores={play=1..,titre=2..65}] run execute if score select map matches 2 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Old Gods Mind ","color":"dark_purple"},{"text":"A","obfuscated":true,"color":"dark_red"}]
execute if entity @a[scores={play=1..,titre=2..65}] run execute if score select map matches 3 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Paradise Garden ","color":"aqua"},{"text":"A","obfuscated":true,"color":"dark_red"}]
execute if entity @a[scores={play=1..,titre=2..65}] run execute if score select map matches 4 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Airship Town ","color":"red"},{"text":"A","obfuscated":true,"color":"dark_red"}]

execute if score debut timer matches 1 run function minecraft:hub/startgame
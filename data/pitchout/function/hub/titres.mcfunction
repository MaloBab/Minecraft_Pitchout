title @a times 0 80 0
execute as @a[team=hub,scores={play=1..},limit=1] run scoreboard players add @s po.timer.titre 1
execute if entity @a[scores={play=1..,po.timer.titre=2..20}] run title @a title {"text":"3","color":"green"}
execute if entity @a[scores={play=1..,po.timer.titre=21..40}] run title @a title {"text":"2","color":"gold"}
execute if entity @a[scores={play=1..,po.timer.titre=41..60}] run title @a title {"text":"1","color":"red"}
execute if entity @a[scores={play=1..,po.timer.titre=61..63}] run title @a clear
execute if entity @a[scores={po.timer.titre=65..}] run scoreboard players set debut po.tech.global_timer 1

execute if entity @a[scores={play=1..,po.timer.titre=65..}] run scoreboard players set @a play 0
execute as @a[scores={po.timer.titre=65..}] run scoreboard players set @s po.timer.titre 0
execute if entity @a[scores={play=1..,po.timer.titre=2..65}] run execute if score select po.map.vote_id matches 1 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Desert Arena ","color":"gold"},{"text":"A","obfuscated":true,"color":"dark_red"}]
execute if entity @a[scores={play=1..,po.timer.titre=2..65}] run execute if score select po.map.vote_id matches 2 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Old Gods Mind ","color":"dark_purple"},{"text":"A","obfuscated":true,"color":"dark_red"}]
execute if entity @a[scores={play=1..,po.timer.titre=2..65}] run execute if score select po.map.vote_id matches 3 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Paradise Garden ","color":"aqua"},{"text":"A","obfuscated":true,"color":"dark_red"}]
execute if entity @a[scores={play=1..,po.timer.titre=2..65}] run execute if score select po.map.vote_id matches 4 run title @a[team=hub] subtitle ["",{"text":"A","obfuscated":true,"color":"dark_red"},{"text":" MAP :","bold":true,"color":"dark_blue"},{"text":" Airship Town ","color":"red"},{"text":"A","obfuscated":true,"color":"dark_red"}]

execute if score debut po.tech.global_timer matches 1 run function pitchout:hub/startgame
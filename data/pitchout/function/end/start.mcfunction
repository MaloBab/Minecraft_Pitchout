# 1. Initialisation de la fin de partie
scoreboard players set $gameState po.main 2
scoreboard players set $globalTimer po.tech 0

# 2. Annonce du Vainqueur

title @a times 10 70 20
title @a title ["",{"text":"Victoire de","color":"gold"},{"text":" ","color":"light_purple"},{"selector":"@a[tag=victoire]","color":"light_purple"}]
title @a subtitle {"text":"Bien joué à lui !","color":"dark_aqua"}

# 3. Récompenses du Vainqueur
function pitchout:end/add_victory_stat

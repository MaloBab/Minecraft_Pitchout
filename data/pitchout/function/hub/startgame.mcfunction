# ===============================================================
# PITCHOUT - LANCEMENT DE PARTIE (Start)
# ===============================================================

# 1. Nettoyage de l'arène & des Joueurs
# On tue les entités indésirables (minecarts, items au sol...)
kill @e[type=chest_minecart]
kill @e[type=item]
title @a clear

clear @a[team=hub]
effect clear @a[team=hub]

# 3. Initialisation des Variables de Jeu
scoreboard players set @a po.tech.remaining_lives 6
scoreboard players set @a po.legacy.detectmort 1
scoreboard players set @a po.stat.deaths_match 0
title @a times 0 80 0


function pitchout:game/map/teleport_players
function pitchout:game/kits/attribution_team


scoreboard players set $gameState po.main 1
scoreboard players set $globalTimer po.tech 0
scoreboard players set debut po.tech.global_timer 0
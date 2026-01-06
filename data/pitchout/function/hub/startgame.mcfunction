# ===============================================================
# PITCHOUT - LANCEMENT DE PARTIE (Start)
# ===============================================================

# 1. Nettoyage de l'arène & des Joueurs
# On tue les entités indésirables (minecarts, items au sol...)
kill @e[type=chest_minecart]
kill @e[type=item]
title @a clear

# 2. Initialisation des Joueurs
# On retire les items du Hub
clear @a[team=hub]
effect clear @a[team=hub]

# 3. Initialisation des Variables de Jeu
scoreboard players set @a po.tech.remaining_lives 6
scoreboard players set @a po.legacy.detectmort 1
scoreboard players set @a po.stat.deaths_match 0


# 4. Téléportation vers l'Arène (Gestion Map)
# J'ai isolé ça dans une sous-fonction pour ne pas polluer ce fichier
function pitchout:game/map/teleport_players

# 5. Changement d'État (CRUCIAL)
# On passe en mode JEU (1). Le fichier game/tick.mcfunction prend le relais.
scoreboard players set $gameState po.main 1

# 6. Reset du Timer Global
# On remet le chronomètre à 0 pour le début de partie
scoreboard players set $globalTimer po.tech 0
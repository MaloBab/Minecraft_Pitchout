# ==========================================
# PITCHOUT - MAIN LOOP (20Hz)
# ==========================================
# Seules les fonctions d'ordonnancement sont appelées ici.
# Pas de logique lourde directement dans ce fichier.

# 1. Gestion du Hub (Lobby)
execute if score $gameState po.main matches 0 run function pitchout:hub/tick

# 2. Gestion du Jeu (In-Game)
execute if score $gameState po.main matches 1 run function pitchout:game/tick

# 3. Gestion de la Fin de partie
execute if score $gameState po.main matches 2 run function pitchout:end/tick

# 4. Timer Global
# On incrémente un timer global pour les événements programmés
scoreboard players add $globalTimer po.main 1
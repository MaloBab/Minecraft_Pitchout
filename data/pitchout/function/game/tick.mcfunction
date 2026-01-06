# ===============================================================
# BOUCLE DE JEU (State 1)
# ===============================================================

# 1. Cœur du jeu
function pitchout:game/core/general
function pitchout:game/core/death
function pitchout:game/core/check_win

# 2. Gestion de l'Arène
function pitchout:game/map/void_detection

# 3. Kits & Compétences (Le plus lourd, à optimiser)
function pitchout:game/kits/tick_all

# 4. Événements (Colis, Tempêtes)
function pitchout:game/events/tick

# 5. Interface
function pitchout:game/ui/actionbar
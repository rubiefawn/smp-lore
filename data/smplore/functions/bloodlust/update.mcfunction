### Filename: update.mcfunction
### Resource: smplore:bloodlust/update
### Title: Update Player Bloodlust Benefits
### Summary: Applies increased maximum health depending on bloodlust.
### Execute: as
# ----------------------------------------------------------------
advancement revoke @s only smplore:events/player_kills_player

## Binary Hackery
# I really wish it was possible to just use a scoreboard value in /attribute.
# That, or be able to modify player data with /data modify.
# Instead, we have this.
# ----------------------------------------------------------------
scoreboard players operation $temporary w = @s bloodlust
execute if score $temporary w matches 256.. run function neonfable:health/256
execute if score $temporary w matches 128.. run function neonfable:health/128
execute if score $temporary w matches 64.. run function neonfable:health/64
execute if score $temporary w matches 32.. run function neonfable:health/32
execute if score $temporary w matches 16.. run function neonfable:health/16
execute if score $temporary w matches 8.. run function neonfable:health/8
execute if score $temporary w matches 4.. run function neonfable:health/4
execute if score $temporary w matches 2.. run function neonfable:health/2
execute if score $temporary w matches 1.. run function neonfable:health/1
scoreboard players reset $temporary w

effect give @s regeneration 3 1 true
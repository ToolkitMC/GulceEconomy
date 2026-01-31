# Trigger sistemi
execute as @a[scores={economy=1..}] run function gulceeconomy:ui/show_main
scoreboard players set @a[scores={economy=1..}] economy 0

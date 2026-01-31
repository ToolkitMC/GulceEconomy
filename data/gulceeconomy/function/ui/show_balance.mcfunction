# Oyuncunun bakiyesini göster
execute store result storage gulceeconomy:temp balance int 1 run scoreboard players get @s money

# Dialog'u makro ile göster
function gulceeconomy:ui/show_balance_dialog with storage gulceeconomy:temp

# Para transfer menüsünü göster
execute store result storage gulceeconomy:temp balance int 1 run scoreboard players get @s money

function gulceeconomy:ui/show_transfer_dialog with storage gulceeconomy:temp

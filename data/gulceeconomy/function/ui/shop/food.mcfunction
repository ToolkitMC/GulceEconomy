# Yiyecekler mağazasını göster
execute store result storage gulceeconomy:temp balance int 1 run scoreboard players get @s money

function gulceeconomy:ui/shop/show_food_dialog with storage gulceeconomy:temp

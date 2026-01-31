# Tüm oyunculara para ver
# Parametre: amount (miktar)

# Tüm oyunculara ekle
$scoreboard players add @a money $(amount)

# Bildirim
$tellraw @a ["",{"text":"[Ekonomi] ","color":"green","bold":true},{"text":"Tüm oyunculara ","color":"yellow"},{"text":"$(amount)₺","color":"gold"},{"text":" verildi!","color":"yellow"}]

# Ses efekti
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5

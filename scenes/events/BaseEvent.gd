extends Reference
#Все ивенты должны наследоваться от этого

var weapon_pull = [] #id пушек которые используются при ивенте
var phrases = [] #Фразы использующиеся только в день ивента
var music_names_to_play = [] #список той музыка что играет в этот эвент 
var event_name = "" #Название ивента
var orders_arrival_time = 0 
var buyer_time_to_leave = 0
var chance = 1

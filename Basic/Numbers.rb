## Hours in a year
days_year = 365
day_hours = 24

hours_year = days_year * day_hours
puts "Há #{hours_year} horas em um ano\n"

## Minutes in a decade
minutes_hour = 60
decade = 10
minutes_decade = minutes_hour * day_hours * days_year * decade
puts "Há #{minutes_decade} minutos em uma década\n"

## Years old in seconds
puts "Digite sua idade\n"
years_input = gets.to_i
hour = 60
years_old = years_input * days_year * day_hours * hour * minutes_hour 
puts "Você tem #{years_old} segundos de idade"

## Years old from seconds to years
puts "Idade em segundos"
seconds_input = gets.to_i
seconds_to_years = (((seconds_input/ days_year) / day_hours) / minutes_hour) / hour
puts "Você tem #{seconds_to_years} anos de idade"
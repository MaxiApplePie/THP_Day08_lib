def half_pyramid
  compteur = 1
  dieses = ""
  
  puts "Veuillez saisir le nombre d'étages svp :"
  print "> "
  floors_number = gets.chomp.to_i
  puts "Voici la pyramide :"
  
  floors_number.times do
    dieses += '#'
    dieses_formatted = dieses.rjust(floors_number, ' ')
    puts dieses_formatted
  end
end

def full_pyramid
  compteur = 1
  dieses = "#"
  floors_number = 0
  
  while (floors_number < 1 or floors_number > 25)
    puts "Veuillez saisir le nombre d'étages svp [Entre 1 et 25]:"
    print "> "
    floors_number = gets.chomp.to_i
    format_area = floors_number * 2 - 1
  end
  
  puts "Voici la pyramide :"
  
  floors_number.times do
    #  dieses_formatted = dieses.ljust(floors_number, ' ')
    dieses_formatted = dieses.center(format_area)
    dieses += '##'
    puts dieses_formatted
  end
end

def wtf_pyramid
  compteur = 1
  dieses = "#"
  floors_number = 0
  modulo_floor = 0
  array_dieses = []
  i = 0

  while (floors_number < 1 or floors_number > 25 or modulo_floor == 0)
    puts "Veuillez saisir le nombre d'étages svp [Entre 1 et 25] // Choisir un nomner impair:"
    print "> "
    floors_number = gets.chomp.to_i
    modulo_floor = floors_number % 2
  end
  # Compute le milieu de la pyramide
  middle_pyramid = floors_number / 2 + 1 #Arrondi en dessous !!!

  puts middle_pyramid
  puts "Voici la pyramide :"
      
    # Partie Haute
  middle_pyramid.times do
    array_dieses[i] = dieses.center(floors_number)
    dieses += '##'
    puts array_dieses[i]
    i += 1
  end
  i -= 1
    # Partie basse
  (middle_pyramid-1).times do
    i -= 1
    puts array_dieses[i]
  end
end

# half_pyramid()
# full_pyramid
wtf_pyramid

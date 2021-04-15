def welcome_screen
  puts ''
  puts '*****************************************************************************************'
  puts '*                                                                                       *'
  puts '*   lancement de la partie .... enjoy ;)                                                *'
  puts '*                                                                         by 404s       *'
  puts '*                                                                                       *'
  puts '*****************************************************************************************'
  puts ''
end
 
def lancement_dé
  marche = 1
  nb_de_jets = 0
  while marche < 10 do
    number = (rand 6) + 1
    
    case number
    when 5..6
      marche += 1
    when 2..4
    when 1
      if marche > 1
        marche -=1
      end
    end
    nb_de_jets += 1
  end
  return nb_de_jets
end

def message_de_fin(total_lancés)
  average = total_lancés / 100
  puts "La moyenne des lancés est de : #{average}"
end

welcome_screen
total_lancés = 0
100.times do |i|
total_lancés += lancement_dé
end
message_de_fin(total_lancés)
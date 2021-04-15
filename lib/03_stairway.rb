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
  
  while marche < 10 do
    number = (rand 6) + 1
    puts "Vous venez de lancer le dé et le résultat est : " + number.to_s
    
    case number
    when 5..6
      "Vous avancez d'une marche !"
      marche += 1
    when 2..4
      "Pas de mouvement"
    when 1
      "Vous reculez d'une marche."
      if marche > 1
        marche -=1
      end
    end
    puts "Vous etes sur la marche " + marche.to_s
  end
end

def message_enthousiaste
  puts ''
  puts '*****************************************************************************************'
  puts '*                                                                                       *'
  puts '*            TROPPP FOOOOOOOOOOOOOOOOOOOOOOOORT                                         *'
  puts '*                                                                                       *'
  puts '*****************************************************************************************'
  puts ''
end

def average_finish_time(seetup_dsp = false)

end

welcome_screen
lancement_dé
message_enthousiaste
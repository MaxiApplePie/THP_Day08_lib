hidden_password = ''

def signup
  puts "Veuillez saisir un mot de passe"
  print "> "
  return hidden_password = gets.chomp
end

def login(hidden_password)
  input_password = "xx"
  while input_password != hidden_password
    puts "Veuillez saisir votre mot de passe"
    print "> "
    input_password = gets.chomp
  end
end

def welcome_screen
  puts ''
  puts '*****************************************************************************************'
  puts '*                                                                                       *'
  puts '*   Hello Guys                                                                          *'
  puts '*                                                                                       *'
  puts '*                                                                                       *'
  puts '*                                                                         by 404s       *'
  puts '*                                                                                       *'
  puts '*****************************************************************************************'
  puts ''
end

hidden_password = signup
login(hidden_password)
welcome_screen
def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

def ask_first_name 
  puts 'Entrer votre nom :'
  print '> '
  return gets.chomp 
end

puts `clear`

first_name = ask_first_name
say_hello(first_name)
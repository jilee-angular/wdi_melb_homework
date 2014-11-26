require 'pry'

require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

# animals
animal1_details = {
  name: "Renee",
  age: 4,
  gender: "female",
  species: "dog",
  toys: "tennis ball, frisbee"
}
animal2_details = {
  name: "George",
  age: 9,
  gender: "male",
  species: "cat",
  toys: "furball"
}
animal3_details = {
  name: "Pepe",
  age: 2,
  gender: "male",
  species: "pig",
  toys: "stick"
}

animal1 = Animal.new(animal1_details)
animal2 = Animal.new(animal2_details)
animal3 = Animal.new(animal3_details)

$animals = [] << animal1 << animal2 << animal3

# clients...
client1_details = {
  name: "Jenny",
  num_children: 2,
  age: 33,
  num_pets: 0
}
client2_details = {
  name: "Bob",
  num_pets: 1,
  num_children: 1,
  age: 41
}
client1 = Client.new(client1_details)
client2 = Client.new(client2_details)

$clients = [] << client1 << client2

$shelter = [] << $clients << $animals

# Methods....
def new_animal
  puts "New animal name: "
  new_animal_name = gets.chomp
  puts "Age?"
  new_animal_age = gets.chomp
  puts "Gender?"
  new_animal_gender = gets.chomp
  puts "Species?"
  new_animal_species = gets.chomp
  puts "Toys?"
  new_animal_toys = gets.chomp

  new_animal_details = {
    name: new_animal_name, 
    age: new_animal_age,
    gender: new_animal_gender,
    species: new_animal_species,
    toys: new_animal_toys
  }
  create_animal = Animal.new(new_animal_details)
  $animals << create_animal
end

def new_client
  puts "Client name?"
  new_client_name = gets.chomp
  puts "Age"
  new_client_age = gets.chomp
  puts "Number of children?"
  new_client_children_num = gets.chomp.to_i
  puts "Number of pets?"
  new_client_pets_num = gets.chomp.to_i

  new_client_details = {
    name: new_client_name,
    age: new_client_age,
    num_children: new_client_children_num,
    num_pets: new_client_pets_num
  }
  create_client = Client.new(new_client_details)
  $clients << create_client
end

def menu_prompt 
  client_arr = []
  $clients.each do |x|
    client_arr << x.name
  end

  animal_arr = []
  $animals.each do |x|
    animal_arr << x.name
  end

  puts "\n" + "Menu Options: "
  puts "Type 1 to display all animals,"
  puts "Type 2 to display all clients,"
  puts "Type 3 to create an animal"
  puts "Type 4 to create a client"
  puts "Type 5 for a client to adopt an animal"
  puts "Type 6 for a client to put an animal for adoption"

  selection = gets.chomp.to_i

  if selection == 1
    puts $animals
    menu_prompt()
  elsif selection == 2
    puts $clients
    menu_prompt()
  elsif selection == 3
    new_animal()
    puts $animals.last
    menu_prompt()
  elsif selection == 4
    new_client()
    puts $clients.last
    menu_prompt()
  elsif selection == 5
    # find the client looking to adopt
    puts "Type the client's name that's looking to adopt: "
    puts client_arr
    client_adopt = gets.chomp

    puts "Choose a pet: "
    puts animal_arr
    animal_adopt = gets.chomp

    adopters = []
    adopters << client_adopt << animal_adopt
    puts "\n"+"#{client_adopt} is adopting #{animal_adopt}"

# add pets number by one
    $clients.each do |x|
      if x.name.downcase == client_adopt.downcase
        x.num_pets += 1
      end
    end

  elsif selection == 6
    puts "Type the client's name that's putting an animal for adoption "
    puts client_arr
    client_adopt = gets.chomp

    puts "Choose a pet: "
    puts animal_arr
    animal_adopt = gets.chomp

    adopters = []
    adopters << client_adopt << animal_adopt
    puts "\n"+"#{client_adopt} is putting #{animal_adopt} up for adoption"

# delete pets number by one
    $clients.each do |x|
      if x.name.downcase == client_adopt.downcase
        x.num_pets -= 1
      end
    end
  # else
  #   menu_prompt()
  end  
end
menu_prompt()

puts "Would you like to continue? (y/n)"
user_input = gets.chomp.downcase

while user_input == "y"
menu_prompt()
end
exit











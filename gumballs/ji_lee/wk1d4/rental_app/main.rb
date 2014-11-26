require 'pry'

require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'


# //////////////// TENANTS ///////////////
jenny_details = {
  name: "Jenny",
  age: 89,
  gender: "Female",
  occupation: "Works on the block",
  is_funny: false
}
jenny = Tenant.new(jenny_details)

bob_details = {
  name: "Bob",
  age: 28,
  gender: "Male",
  occupation: "Bobbler",
  is_funny: true
}
bob = Tenant.new(bob_details)

joe_details = {
  name: "Joe",
  age: 37,
  gender: "Male",
  occupation: "Dealer",
  is_funny: false
}
joe = Tenant.new(joe_details)

kate_details = {
  name: "Kate",
  occupation: "Dancer",
  age: 22,
  is_funny: false,
  gender: "Female"
}
kate = Tenant.new(kate_details)

chris_details = {
  name: "Chris",
  age: 52,
  occupation: "Runner",
  is_funny: true,
  gender: "Male"
}
chris = Tenant.new(chris_details)

jordon_details = {
  name: "Jordon",
  age: 55,
  occupation: "Investor",
  is_funny: true,
  gender: "Male"
}
jordon = Tenant.new(jordon_details)

julia_details = {
  name: "Julia",
  age: 43,
  gender: "Female",
  occupation: "Sales",
  is_funny: false
}
julia = Tenant.new(julia_details)

# //////////////// APARTMENTS  ///////////////
apt1_details = {
  apartment_name: "Tower One",
  room_number: 707,
  number_bedrooms: 1,
  number_bathrooms: 20,
  has_parking: true     # no need to put tenants: = [] cause we've defined @tenants = []
}
apt1 = Apartment.new(apt1_details)

apt2_details = {
  apartment_name: "Tower Two",
  room_number: 23,
  number_bathrooms: 1,
  number_bedrooms: 2,
  has_parking: false
}
apt2 = Apartment.new(apt2_details)

apt3_details = {
  apartment_name: "Central",
  room_number: 38,
  number_bedrooms: 3,
  number_bathrooms: 2,
  has_parking: true
}
apt3 = Apartment.new(apt3_details)

# //////////////// BUILDINGS ///////////////
trump_tower_details = {
  address: "Trump Rd, NYC",
  number_floors: 100,
  apartments: true,
  has_elevator: true,
  has_doorman: true,
  building_name: "Trump Tower"
}
trump_tower = Building.new(trump_tower_details)

eureka_tower_details = {
  address: "Eureka St, Melbourne",
  number_floors: 78,
  apartments: true,
  has_doorman: true,
  has_elevator: true,
  building_name: "Eureka Tower"
}
eureka_tower = Building.new(eureka_tower_details)

opera_house_details = {
  address: "Sydney Harbour, Sydney",
  number_floors: 5,
  apartments: false,
  has_elevator: false,
  has_doorman: false,
  building_name: "Opera House"
}
opera_house = Building.new(opera_house_details)
apt1.tenants << jenny
# p apt1.tenants

# //////////////// Organized Blgs/Apts/Tnts ///////////////
trump_tower.apartments << apt1
eureka_tower.apartments << apt2
eureka_tower.apartments << apt3

apt1.tenants << joe
apt1.tenants << kate
apt2.tenants << jordon
apt2.tenants << chris 


# Nested hashes and set it to global variables
$buildings = [] << trump_tower << eureka_tower << opera_house
$apartments = [] << apt1 << apt2 << apt3
$tenants = [] << jenny << bob << kate << chris << joe << jordon << julia


# //////////////// Methods ///////////////


def building_names
  $buildings.each do |building|
    puts building
  end
end

# apartments
def apt_names
  $buildings.each do |building|
    building.apartments.each do |apartment|
      puts apartment
    end
  end
end

# tenants
def tenant_names
  $buildings.each do |building|
    building.apartments.each do |apartment|
      apartment.tenants.each do |tenant|
        puts tenant
      end
    end
  end
end


# Prompting user inputs for buildings, apartments, tenants
puts "\n" + "//////////////////// RENTAL APP ////////////////////"

def menu
  puts "Please type the number to list the items: "
  puts "Type 1 for Buildings"
  puts "Type 2 for Apartments"
  puts "Type 3 for Tenants"

  result = gets.chomp.downcase.to_i

  # User looks at the building or the apartments
  if result == 1 
    puts "\n" + "These are our listed buildings: "
    building_names()
  elsif result == 2
    puts "\n" + "These are our apartments. "
    apt_names()
  elsif result == 3
    puts "\n" + "These are our tenants"
    tenant_names  
  else
    puts "Incorrect selection."
    menu()
  end

end

menu()

def options
  puts "\n"+"Please type the number on the menu:"
  puts "Type 1 to look up the list again"
  puts "Type 2 to add a new building"
  puts "Type 3 to add a new apartment"
  puts "Type 4 to add a new tenant"
  puts "Type 5 to exit"

  option = gets.chomp.to_i

  if option == 1
    menu()
  elsif option == 2  #new building
    puts "What's the name of the building?"
    add_bldg_name = gets.chomp
    
    puts "What is the address?"
    add_bldg_address = gets.chomp
    
    puts "How many floors does it have?"
    add_bldg_floors = gets.chomp.to_i
    
    puts "Does it have apartments?(y/n)"
     yn = gets.chomp.downcase
      if yn == "y"
        puts "What is the name of the apartment"
          add_bldg_apt = gets.chomp
      else
        "Got it."
      end
    
    puts "Does it have a doorman? (y/n)"
    response = gets.chomp.downcase
      if response == "y"
        puts "Good to know."
        add_bldg_doorman = true
      else
        puts "Got it."
        add_bldg_doorman = true
      end

    puts "Does it have an elevator? (y/n)"
    response = gets.chomp.downcase
      if response == "y"
        puts "Good to know."
        add_bldg_elevator = true
      else
        puts "Got it."
        add_bldg_elevator = false
      end  
    new_bldg_details = {
      building_name: add_bldg_name,
      address: add_bldg_address,
      apartments: add_bldg_apt,
      number_floors: add_bldg_floors,
      has_doorman: add_bldg_doorman,
      has_elevator: add_bldg_elevator
    }
    add_new_bldg = Building.new(new_bldg_details)
    $buildings << add_new_bldg
    puts $buildings

  elsif option == 3  #new apartment
    puts "What's the name of the apartment?"
    add_apt_name = gets.chomp
    
    puts "What is the room number?"
    add_apt_number = gets.chomp.to_i
    
    puts "How many bedrooms?"
    add_apt_beds = gets.chomp.to_i

    puts "How many bathrooms?"
    add_apt_bathrooms = gets.chomp.to_i
    
    puts "Does it have parking?(y/n)"
    response = gets.chomp.downcase
      if response == "y"
        puts "Good to know."
        add_parking = true
      else
        puts "Got it."
        add_parking = false
      end

    puts "Does it have tenants? (y/n)"
    response = gets.chomp.downcase
      if response == "y"
        puts "Got it"
        add_tenant = "There are tenants."
      else
        puts "Got it" 
        add_tenant = "(No tenants)"
      end
 
    new_apt_details = {
      apartment_name: add_apt_name,
      room_number: add_apt_number,
      number_bedrooms: add_apt_beds,
      number_bathrooms: add_apt_bathrooms,
      has_parking: add_parking,
      tenants: add_tenant
    }
    add_new_apt = Apartment.new(new_apt_details)
    $apartments << add_new_apt
    puts $apartments

  elsif option == 4  #new tenant
    puts "What is the tenant's name?"
    add_tenant_name = gets.chomp

    puts "What's the age?"
    add_tenant_age = gets.chomp.to_i

    puts "What's the occupation?"
    add_tenant_occu = gets.chomp

    puts "Male or Female?"
    add_gender = gets.chomp

    puts "Any sense of humour? (y/n)"
    response = gets.chomp.downcase
    if response == "y"
      puts "Got it"
      add_humour = true
    else
      puts "Got it"
      add_humour = false
    end

    new_tenant_details = {
      name: add_tenant_name,
      age: add_tenant_age,
      occupation: add_tenant_occu,
      gender: add_gender,
      is_funny: add_humour
    }

    add_new_tenant = Tenant.new(new_tenant_details)
    $tenants << add_new_tenant  #need to add the tenant to an apartment instead of $tenants... so need to ask which apartment the use wish to add the tenant to. 
    puts $tenants
  elsif option == 5
    puts "Thank you." 
    exit
  end
end

options()

puts "Would you like to continue? (y/n)"
continue = gets.chomp.downcase

while continue == "y"
  options() 
end
  puts "\n" + "See you later."

# binding.pry




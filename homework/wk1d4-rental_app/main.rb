# THIS IS MAIN.RB
require 'pry'
require_relative 'tenant'
require_relative 'apartment'
require_relative 'building'

jenny_details = {
  :name => 'Jenny',
  :age => 89,
  :gender => 'Male',
  :occupation => 'Works on the block',
  :is_funny => false
}

jenny = Tenant.new(jenny_details)

apartment_details = {
  :room_number => 707,
  :number_bedrooms => 1,
  :number_bathrooms => 20,
  :has_parking => true
}

a1 = Apartment.new(apartment_details)

binding.pry
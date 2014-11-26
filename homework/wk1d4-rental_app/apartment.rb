class Apartment
  attr_accessor :tenants, :room_number, :number_bedrooms,  :number_bathrooms, :has_parking
  def initialize(apartment_details)
    @room_number = apartment_details[:room_number]
    @number_bedrooms = apartment_details[:number_bedrooms]
    @number_bathrooms = apartment_details[:number_bathrooms]
    @has_parking = apartment_details[:has_parking]
    @tenants = []
  end

  def to_s
    "This apartment has #{@room_number} rooms. This apartment has #{@number_bedrooms} bedrooms."
  end

end

# apartment_details = {
#   :room_number => 707,
#   :number_bedrooms => 1,
#   :number_bathrooms => 20,
#   :has_parking => true
# }

# a1 = Apartment.new(apartment_details)

# puts a1

# apartment2_details = {
#   :room_number => 33,
#   :number_bedrooms => 2,
#   :number_bathrooms => 223,
#   :has_parking => true
# }
# a2 = Apartment.new(apartment2_details)

# puts a2
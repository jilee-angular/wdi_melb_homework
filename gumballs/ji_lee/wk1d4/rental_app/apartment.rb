class Apartment
  attr_accessor :apartment_name, :tenants, :room_number, :number_bedrooms, :number_bathrooms, :has_parking

  def initialize(apt_details)
    @apartment_name = apt_details[:apartment_name]
    @room_number = apt_details[:room_number]
    @number_bedrooms = apt_details[:number_bedrooms]
    @number_bathrooms = apt_details[:number_bathrooms]
    @has_parking = apt_details[:has_parking]
    @tenants = []  # act like an array
  end

  def to_s
    if has_parking == true
      "#{apartment_name} #{room_number} has #{number_bathrooms} bathrooms, #{number_bedrooms} bedrooms, with parking."
    else
      "#{apartment_name} #{room_number} has #{number_bathrooms} bathrooms, #{number_bedrooms} bedrooms."
    end
  end
end


# apt_details = {
#   room_number: 707,
#   number_bedrooms: 1,
#   number_bathrooms: 20,
#   has_parking: true     # no need to put tenants: = [] cause we've defined @tenants = []
# }

# a1 = Apartments.new(apt_details)

# p a1.has_parking
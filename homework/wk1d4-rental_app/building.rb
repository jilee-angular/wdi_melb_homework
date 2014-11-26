class Building
  attr_accessor :address, :has_elevator, :has_doorman, :apartments, :number_of_floors

  def initialize(building_details)
    @address = building_details[:address]
    @has_doorman = building_details[:has_doorman]
    @has_elevator = building_details[:has_elevator]
    @number_of_floors = building_details[:number_of_floors]
    @apartments = []
  end

end

# b1_details = {
#   :address => '123 Fake st',
#   :has_doorman => false,
#   :has_elevator => false,
#   :number_of_floors => 999
# }

# b1 = Building.new(b1_details)

# p b1.has_elevator
class Building
  attr_accessor :building_name, :address, :number_floors, :apartments, :has_doorman, :has_elevator

  def initialize(bld_details)
    @building_name = bld_details[:building_name]
    @address = bld_details[:address]
    @number_floors = bld_details[:number_floors]
    @apartments = []
    @has_doorman = bld_details[:has_doorman]
    @has_elevator = bld_details[:has_elevator]
  end

  def to_s
    if has_elevator == true && has_doorman == true 
      "#{building_name} is on #{address} and has #{number_floors} floors with a doorman and an elevator."
    elsif has_elevator == true && has_doorman == false
      "#{building_name} is on #{address} and has #{number_floors} floors with an elevator, but no doorman."
    elsif has_elevator == false && has_doorman == true
      "#{building_name} is on #{address} and has #{number_floors} floors with a doorman. No elevator."
    elsif has_elevator == false && has_doorman == false
      "#{building_name} is on #{address} and has #{number_floors} floors. No elevator, no doorman."
    end
  end
end

# b1_details = {
#   address: '123 Fake st',
#   has_doorman: false,
#   has_elevator: false, 
#   number_floors: 999
# }

# b1 = Building.new(b1_details)

# p b1.address




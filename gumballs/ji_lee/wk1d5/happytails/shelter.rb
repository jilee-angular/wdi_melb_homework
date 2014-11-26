class Shelter
  attr_accessor :name

  def initialize(shelter_details)
    @name = shelter_details(:name)
  end

  def to_s
    "Welcome to #{name}"
  end

end
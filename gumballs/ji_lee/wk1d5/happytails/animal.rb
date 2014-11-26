class Animal 
  attr_accessor :name, :age, :gender, :species, :toys

  def initialize(animal_details)
    @name = animal_details[:name]
    @age = animal_details[:age]
    @gender = animal_details[:gender]
    @species = animal_details[:species]
    @toys = animal_details[:toys]
  end

  def to_s
    "#{name} is a #{age} old #{gender} #{species}, and plays with a #{toys}."
  end

end



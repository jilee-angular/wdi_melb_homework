class Person
  attr_reader :gender
  attr_accessor :name, :age

  def initialize(passed_in_name, passed_in_age, passed_in_gender)
    @name = passed_in_name
    @age = passed_in_age
    @gender = passed_in_gender
  end

end

bob = Person.new("Bob", 89, "Male")

p bob

p bob.name

bob.name = "Jenny"

bob.gender = "Female"
class Person

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

end

bob = Person.new
bob.name = "Bob"

p bob.name
bob.name = "Jim"
p bob.name
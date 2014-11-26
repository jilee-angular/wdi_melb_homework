class Person

  def initialize(name)
    @name = name
  end

  def name 
    @name
  end

  def name=(name)
    @name = name
  end
end


bob = Person.new

jenny = Person.new

p bob
p jenny

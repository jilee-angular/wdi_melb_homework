class Client
  attr_accessor :name, :num_children, :age, :num_pets

  def initialize(client_details)
    @name = client_details[:name]
    @num_children = client_details[:num_children]
    @age = client_details[:age]
    @num_pets = client_details[:num_pets]
  end

  def to_s
    "#{name} has #{num_pets} pet(s)."
  end

  # def adopting
  #   def to_s
  #     "#{name} has #{num_pets.to_i}+1 pet(s)"
  #   end
  # end

  # def adopttion
  #   def to_s
  #     "#{name} has #{num_pets.to_i}-1 pet(s)"
  #   end
  # end
end
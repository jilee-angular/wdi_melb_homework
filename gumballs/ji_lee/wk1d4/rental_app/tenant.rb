class Tenant 
  attr_reader :gender
  attr_accessor :name, :age, :occupation, :gender, :is_funny

  def initialize(tenant_details)
    @name = tenant_details[:name]
    @age = tenant_details[:age]
    @occupation = tenant_details[:occupation]
    @gender = tenant_details[:gender]
    @is_funny = tenant_details[:is_funny]
  end

  def to_s   
    if is_funny == true
      "#{name} is #{age} years old, do #{occupation} for a living, #{gender} and has a sense of humour"
    else
      "#{name} is #{age} years old, do #{occupation} for a living, #{gender} and has no sense of humour"
    end
  end
end

# jenny_details = {
#   name: "Jenny",
#   age: 89,
#   gender: "Male",
#   occupation: "Works on the block",
#   is_funny: false
# }

# jenny = Tenant.new(jenny_details)

# p jenny.is_funny

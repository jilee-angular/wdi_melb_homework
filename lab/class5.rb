class Superhero
  attr_writer :secret_name
  attr_reader :alignment
  attr_accessor :power, :super_name, :nemesis
  @@alignment = "lawful good"

  def initialize(details)
    @power = details[:power]
    @super_name = details[:super_name]
    @secret_name = details[:secret_name]
    @nemesis = details[:nemesis]
  end

end

batman_details = {
  :super_name => 'Batman',
  :power => 'Filthy Rich',
  :secret_name => 'Bruce Wayne',
  :nemesis => 'Joker'
}

batman_details[:super_name]

batman = Superhero.new(batman_details)

# p batman
p batman.nemesis
p batman.power
p batman
class Superhero
  attr_writer :secret_name
  attr_accessor :power, :super_name, :nemesis

  def initialize(power, super_name, secret_name, nemesis)
    @power = power
    @super_name = super_name
    @secret_name = secret_name
    @nemesis = nemesis
  end

end

superman = Superhero.new('being super', 'Superman', 'Clark Kent', 'Lex Luthor')

p superman.super_name
p superman.secret_name = "Dave"

















batman = Superhero.new('Joker', 'Bruce Wayne', 'Batman', 'Lots of money')

p batman.super_name
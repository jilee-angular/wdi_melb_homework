puts "How many bottles of beer do you have?"
count = gets.chomp
beers = count.to_i

def bottles(n)
n == 1 ? "#{n} bottle" : "#{n} bottles"
end

beers.downto(1) {
    puts "#{bottles(beers)} of beer on the wall, #{bottles(beers)}. Take one down and pass it around, #{bottles(beers-=1)} of beer on the wall."
}
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "No more beer, hiccup...!"

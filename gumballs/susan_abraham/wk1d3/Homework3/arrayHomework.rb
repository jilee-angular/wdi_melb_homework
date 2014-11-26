a = ["Anil", "Erik", "Jonathan"]
puts a[1]
a << "Vasko Traikovski"

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
puts h[1]
puts h[:two]
puts h["two"]
# 	B
#h << {3 => "Three"}
h[3] = "Three"
puts h

h[:four] = 4
puts h

# 	C

is = {true => "It's true!", false => "It's false"}
puts is[2 + 2 == 4]
puts 1
puts is["Erik" == "Jonathan"]
puts 2
puts is[9 > 10]
puts 3
puts is[0]
puts 4
puts is["Erik"]
puts 5



# 	D. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

user2={
	"j" => { :t => "t",:f => [1,2],},
	"E" => { :t => "s",:f => [2,2],},
}

puts "\nD 1)"
puts users["Jonathan"][:twitter]

puts "\nD 2)"
users["Erik"][:favorite_numbers] << 7
puts users["Erik"]

puts "\nD 3) How would you add yourself to the users hash?"
users["Vasko"]  =   {:twitter => "vas",:favorite_numbers => [12, 14, 85]}
puts users["Vasko"]

puts "\nD 4) How would you return the array of Erik's favorite numbers?"
puts users["Erik"][:favorite_numbers]

puts "\nD 5) How would you return the smallest of Erik's favorite numbers?"
puts users["Erik"][:favorite_numbers].min

puts "\nD 6) How would you return an array of Anil's favorite numbers that are also even?"
users["Anil"][:favorite_numbers].each{ |x| if x%2===0 then puts x end }

puts "\nD 7) How would you return an array of the favorite numbers common to all users?"
puts	(users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers])

puts "\nD 8) How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates??"
puts	( users["Jonathan"][:favorite_numbers] << users["Erik"][:favorite_numbers] << users["Anil"][:favorite_numbers] ).flatten!.sort.uniq
















num = 99

while num > 0

	if num > 1 
		puts "#{num} bottles of beer on the wall, #{num} bottles of beer."
		puts "Take one down and pass it around, #{num} bottles of beer on the wall."
		puts " "
	elsif num == 1 
		puts "#{num} bottles of beer on the wall, #{num} bottles of beer."
		puts "Take one down and pass it around, no more bottles of beer on the wall."
		puts " "
	end
	num -= 1

	if num == 0
		 puts "No more bottles of beer on the wall, no more bottles of beer."
		 puts "Go to the store and buy some more, 99 bottles of beer on the wall."
	end
end




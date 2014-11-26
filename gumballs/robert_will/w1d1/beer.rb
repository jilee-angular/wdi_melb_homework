def song
	x = 99
	while x > 0
		puts "#{x} bottles of beer on the wall. #{x} bottles of beer.
Take one down, pass it around, #{x-1} bottles of beer on the wall!"
		puts" "
		x = x-1
	end
end
song
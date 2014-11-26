i = 99
while i > 1  
	i -= 1
	if i > 1
		puts "#{i} bottles of beer on the wall, #{i} bottles of beer.
Take one down and pass it around, #{i-1} bottles of beer on the wall."
	else
		puts "#{i} bottle of beer on the wall, #{i} bottle of beer. 
Take it down and pass it around, no more bottles of beer on the wall.  

No more bottles of beer on the wall, no more bottle of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall."
	end
end
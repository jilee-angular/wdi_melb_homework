puts "			
			Welcome to Ruby Calculator!

" 

def menu 
puts "			       >>> MENU <<<
		 [add], [sub]tract, [mul]tiply, [div]ide.
		        [exp]onent, [sq]uare root
		                [q]uit
	
		    Please select operation to perform: "
	
end

	menu

	operation = gets.chomp.downcase

while operation != "q" do
	

		puts "Enter the first value:"
		val1 = gets.chomp.to_i

		puts "Enter the second value:"
		val2 = gets.chomp.to_i

		case operation
			when "add"
				puts "#{val1} + #{val2} = #{val1 + val2}"
			when "sub"
				puts "#{val1} - #{val2} = #{val1 - val2}"
			when "mul"
				puts "#{val1} * #{val2} = #{val1 * val2}"
			when "div"
				puts "#{val1} / #{val2} = #{val1 / val2.to_f}"
			when "exp"
				puts "#{val1} ** #{val2} = #{val1 ** val2}"
			when "sq"
				puts "Square root of #{val1} = #{Math.sqrt(val1)}"
			else 
				puts "Operation not in menu"
		end

		menu

		operation = gets.chomp.downcase

end

puts "		   Thank you for using Ruby Calculator!

"




# FOR GETTING SINGLE VALUE FOR SQ --IN PROGRESS
	# 
	# 	unless operation != "sq"
	# 		puts "Enter the first value:"
	# 		val1 = gets.chomp.to_i

	# 		puts "Enter the second value:"
	# 		val2 = gets.chomp.to_i
	# 	else
	# 		puts "Enter a value:"
	# 		val1 = gets.chomp.to_i
	# 	end
	# 

	


#THIS IS FOR GETTING MULTIPLE VALUES ---IN PROGRESS
# puts "How many values are there to #{operation}?"
# values = gets.chomp.to_i

# def get_values(x)
# 	x.times do |val|
# 		print "Enter value: "
# 		gets.chomp.to_i	
# 		x -= 1
# 	end
# end

# get_values(values)
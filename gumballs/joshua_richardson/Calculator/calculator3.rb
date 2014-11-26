def seperator
	puts "---------------------------------------------------------------------"
end

puts seperator
puts "Welcome to the worlds sh**est calculator."
puts seperator

puts "Please select the type of calculation you would like to make by typing one of the following numbers"
puts seperator
menu = ["1. Add", "2. Subtract", "3. Multiply", "4. Divide", "5. Exponent", "6. Square Root", "7. Quit"]

while true
	puts menu
	choice = gets.chomp.to_i

	case choice
		when 1
			puts "Please enter the first number you would like to add: "
			first_add = gets.chomp.to_i
			puts "Now enter the second number you would like to add: "
			second_add = gets.chomp.to_i
			added_number = first_add + second_add
			puts "Result: #{first_add} - #{second_add} = #{added_number}"
		when 2
			puts "Please enter the first number you would like to subtract: "
			first_subtract = gets.chomp.to_i
			puts "Now enter the second number you would like to subtract: "
			second_subtract = gets.chomp.to_i
			subtracted_number = first_subtract - second_subtract
			puts "Result: #{first_subtract} - #{second_subtract} = #{subtracted_number}"
		when 3
			puts "Please enter the first number you would like to multiply: "
			first_multiply = gets.chomp.to_i
			puts "Now enter the second number you would like to multiply: "
			second_multiply = gets.chomp.to_i
			multiplied_number = first_multiply * second_multiply
			puts "Result: #{first_multiply} * #{second_multiply} = #{multiplied_number}"
		when 4
			puts "Please enter the first number you would like to divide"
			first_divide = gets.chomp.to_i
			puts "Now enter the second number you would like to divide: "
			second_divide = gets.chomp.to_i
			divided_number = first_divide / second_divide
			puts "Result: #{first_divide} / #{second_divide} = #{divided_number}"
		when 5
			puts "Please enter the first number"
			first_exponent = gets.chomp.to_i
			puts "Now enter the exponent: "
			second_exponent = gets.chomp.to_i
			exponent_number = first_exponent ** second_exponent
			puts "Result: #{first_exponent} ** #{second_exponent} = #{exponent_number}"
		when 6
			puts "Please enter the first number you would like to find the square root of"
			first_square = gets.chomp.to_i
			square_root = Math.sqrt(first_square)
			puts "Result: #{square_root}"
		when 7
			exit(0)
	end 
end



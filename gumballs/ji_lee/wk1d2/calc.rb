
puts "This is your calculator. Let's do this!"


# Set two variables to compute
def values(a, b)
	print "What is your first value? "
	@a = gets.to_i

	print "What is your second value? "
	@b = gets.to_i
end

# Set one variable
def value(num)
	print "Provide a number please: "
	@num = gets.to_i
end

# Express the operator for the actual calculation
def express(operator)
	puts "You've selected #{operator}"
	values(@a, @b)
	print "\n" + "Your answer is: "
end


# Show menu of arithmetic operations &
# ask users to choose the arithmetic operation to compute
def select_operator
	puts "\n" + "MENU: Select an operation to compute. \nType 1 to Add, \ntype 2 to Subtract, \ntype 3 to Multiply, \ntype 4 to Divide, \ntype 5 to Exponentiate, \ntype 6 to Square Root."
	selection = gets.to_i
	
	if selection > 0 && selection < 7
		if selection == 1 
			selection = "Addition"
			express(selection)
			puts @a + @b 
		elsif selection == 2
			selection = "Subtraction"
			express(selection)
			puts @a - @b 
		elsif selection == 3
			selection = "Multiplication"
			express(selection)
			puts @a * @b 
		elsif selection == 4
			selection = "Division"
			express(selection)
			puts @a / @b
		elsif selection == 5      # Specified the quetions to input value
			puts "You've selected Exponentiation"
			print "What is the base value? "
				@a = gets.to_i

			print "What is the exponent value? "
				@b = gets.to_i
			puts "Your answer is: #{@a ** @b}" 
		elsif selection == 6     
			puts "You've selected Squre Root."
			value(@num)            # Only one value is collected
			puts "Your answer is: #{Math.sqrt(@num)}"
		end
	elsif selection < 0 || selection > 6   # Error message
			puts "\n" + "Select the correct operation. Damn it! \nType q to get out of the Menu."
			select_operator()
	elsif selection == "q"     # Quit menu
			puts "See you later.."
			exit
	end
end


select_operator() 

# To loop the calculator
calculator_on = true

while calculator_on 
	puts "\n" + "Type 'y' to keep on calculating."
	go_again = gets.chomp.downcase

	if go_again == "y"
		select_operator()
	else
		puts "See you later..." 
		exit 
	end
end

# test





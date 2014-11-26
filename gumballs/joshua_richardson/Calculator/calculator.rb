def seperator
	puts "---------------------------------------------------------------------------------------------------------------"
end

puts seperator
puts "Welcome to the worlds sh**est calculator."
puts seperator

def add(first_num, second_num)
	puts "Please write the first number you would like to add"
	first_num = gets.chomp
	puts "Now please write the second number you would like to add"
	second_num = gets.chomp
	first_num + second_num
end


	puts "Please select the type of calculation you would like to make by typing one of the following numbers"
	menu = ["1. Add", "2. Subtract", "3. Multiply", "4. Divide", "5. Quit"]
	case
		when 1
			add
		when 2
			subtract
		when 3 
			Multiply
		when 4 
			Divide
		when 5
			exit(0)
		else 
			"Please try again"
			choice
	end


get_input




def subtract(first_number, second_number)
	a - b
end

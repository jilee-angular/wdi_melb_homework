
def intro
	puts "Welcome to the Command Line Calculator!"
	puts ""
	puts "Following are the possible operation commands:"
	puts "1) Addition"
	puts "2) Subtraction"
	puts "3) Multiplication"
	puts "4) Division"
	puts "5) Exponentiation"
	puts "6) Square root"
	puts "0) Exit the program"
	puts ""
end

def get_command(str)
	puts str
	return gets.chomp
end

def get_num(str)
	puts str
	return gets.chomp.downcase
end

def print_result(r)
	puts ""
	puts "The result of your input is: #{r}"
	puts ""
end

command_str = "Please enter a number for the relevant command:"
first_num_str = "Please enter the first number:"
second_num_str = "Please enter the second number:"
next_num_str = "Please enter the next number, enter \"go\" when done entering numbers:"
root_str = "Please enter the number to be rooted:"
neg_root_error = "Sorry, by definition you can only take the square root of positive numbers, please try again."
command_invalid = "Sorry, you need to enter a valid command, please try again."

#---------------------------------------------------------------------------------------------------------------

intro
command = get_command(command_str)

while command != "0"
	case command
	when "1"
		first_num = get_num(first_num_str)
		result = first_num.to_f
		next_num = get_num(next_num_str)
		while next_num != "go"
			result += next_num.to_f
			next_num = get_num(next_num_str)
		end
		print_result(result)
		command = get_command(command_str)
	when "2"
		first_num = get_num(first_num_str)
		result = first_num.to_f
		next_num = get_num(next_num_str)
		while next_num != "go"
			result -= next_num.to_f
			next_num = get_num(next_num_str)
		end
		print_result(result)
		command = get_command(command_str)
	when "3"
		first_num = get_num(first_num_str)
		result = first_num.to_f
		next_num = get_num(next_num_str)
		while next_num != "go"
			result *= next_num.to_f
			next_num = get_num(next_num_str)
		end
		print_result(result)
		command = get_command(command_str)
	when "4"
		first_num = get_num(first_num_str)
		result = first_num.to_f
		next_num = get_num(next_num_str)
		while next_num != "go"
			result /= next_num.to_f
			next_num = get_num(next_num_str)
		end
		print_result(result)
		command = get_command(command_str)
	when "5"
		first_num = get_num(first_num_str)
		second_num = get_num(second_num_str)
		result = first_num.to_f ** second_num.to_f
		print_result(result)
		command = get_command(command_str)
	when "6"
		first_num = get_num(root_str)
		if first_num.to_f < 0
			puts neg_root_error
		else
			result = Math.sqrt(first_num.to_f)
			print_result(result)
			command = get_command(command_str)
		end
	else # this bit does not work as expected - keeps looping (argh)
		puts command_invalid
	end
end


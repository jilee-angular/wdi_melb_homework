puts "WELCOME TO THE CALCULATOR!!! Choose an operation by entering the number :)"
menu = ["1. add", "2. subtract", "3. multiply", "4. divide", "5. exponential", "6. root", "7. exit"]
puts menu
input = gets.chomp

until input == "7"

	if input == "1"
		puts "value?: "
		value1 = gets.chomp.to_i
		puts "next value?: "
		value2 = gets.chomp.to_i
		puts "another value? (y/n)"
		response = gets.chomp.downcase
		
		until response == "n"
			puts "nextvalue?"
			value2 += gets.chomp.to_i
			puts "another value? (y/n)"
			response = gets.chomp.downcase
		end
		puts "YOUR ANSWER = #{value1 + value2}"
		puts " "
	end

	if input == "2"
		puts "value?: "
		value1 = gets.chomp.to_i
		puts "next value?: "
		value2 = gets.chomp.to_i
		puts "another value? (y/n)"
		response = gets.chomp.downcase
		
		until response == "n"
			puts "nextvalue?"
			value2 += gets.chomp.to_i
			puts "another value? (y/n)"
			response = gets.chomp.downcase
		end
		puts "YOUR ANSWER = #{value1 - value2}"
		puts " "
	end

	if input == "3"
		puts "value?: "
		value1 = gets.chomp.to_i
		puts "next value?: "
		value2 = gets.chomp.to_i
		puts "another value? (y/n)"
		response = gets.chomp.downcase
		
		until response == "n"
			puts "nextvalue?"
			value2 *= gets.chomp.to_i
			puts "another value? (y/n)"
			response = gets.chomp.downcase
		end
		puts "YOUR ANSWER = #{value1 * value2}"
		puts " "
	end

	if input == "4"
		puts "value?: "
		value1 = gets.chomp.to_i
		puts "next value?: "
		value2 = gets.chomp.to_i
		puts "another value? (y/n)"
		response = gets.chomp.downcase
		
		until response == "n"
			puts "nextvalue?"
			value2 *= gets.chomp.to_i
			puts "another value? (y/n)"
			response = gets.chomp.downcase
		end
		puts "YOUR ANSWER = #{value1 / value2}"
		puts " "
	end

	if input == "5"
		puts "value?: "
		value1 = gets.chomp.to_i
		puts "to the power of?: "
		value2 = gets.chomp.to_i
		puts "another power? (y/n)"
		response = gets.chomp.downcase
		
		until response == "n"
			puts "nextvalue?"
			value2 *= gets.chomp.to_i
			puts "another value? (y/n)"
			response = gets.chomp.downcase
		end
		puts "YOUR ANSWER = #{value1 ** value2}"
		puts " "
	end

		if input == "6"
		puts "number to root?"
		first = gets.chomp.to_i
		puts "nth root?"
		n = gets.chomp.to_i
		
		puts "YOUR ANSWER = #{(first ** (1.0/n))}"
		puts " "
	end

	puts "WELCOME TO THE CALCULATOR!!! Choose an operation by entering the number :)"
	menu = ["1. add", "2. subtract", "3. multiply", "4. divide", "5. exponential", "6. root", "7. exit"]
	puts menu
	input = gets.chomp
end

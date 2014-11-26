# puts "enter a number and then a mathamatical symbol to perform followed by another number"
# print "---->"
# range = gets.chomp.split(" ")

# def calculator
# 	num1 = range[0].to_i
# 	symbol = range[1].to_sym
# 	num2 = range[2].to_i

# 	case calculator
# 		when :+ then puts num1 + num2
# 		when :- then puts num1 - num2
# 		when :* then puts num1 * num2 
# 		when :/ then puts num1 / num2
# 		else
# 			puts "invalid input"
# 	end
# end

# calculator(range)

def values(n)
  n.times.map.with_index { |n|
    print "Enter value ##{ 1 + n }: "
    gets.chomp.to_i 
  }
end

while true
	puts "Would you like to [add], [multiply], [divide] or [subtract]? Enter [q] to quit."
	method = gets.chomp
	puts "How many values?"
	how_many = gets.to_i
		
		case method
			when 'add'
			  puts "Enter values to add?"
			  symbol = :+
			when 'subtract'
			  puts "Enter vaules to subtract?"
			  symbol = :-
			when 'multiply'
			  puts "Enter values to multiply?"
			  symbol = :*
			when 'divide'
				puts "Enter values to divide?"
			  symbol = :/
			when 'q'
				Process.exit
		end
	response = values(how_many).inject(symbol)
	puts "The answer is... #{ response }"
end

# def calc
# 	print "enter the first number:"
# 	num1 = str[0]to_i
# end

# puts "choose the following operation to perform '+' '-' '*' '/'"
# calculator = str[1]to_sym

# print "enter the second number:"
# num2 = str[2].to_i


# case calculator
# 	when (+)
# 		puts num1 + num2
# 	when (-)
# 		puts num1 - num2
# 	when (*)
# 		puts num1 * num2 
# 	when (/)
# 		puts num1 / num2
# 	else
# 		puts "invalid input"
# end


# #addition
# def add(a, b)
# 	return a + b
# end

# add(num1, num2)

# #subtrction
# def sub(a, b)
# 	return a - b
# end

# sub(num1, num2)

# #multiplication
# def multi(a, b)
# 	return a * b
# end

# multi(num1, num2)

# def divide(a, b)
# 	return a / b
# end

# divide(num1, num2)
print "Would you like to use the calculator? Just say the word (yes)."
initiate_calculator = gets.chomp
initiate_calculator.downcase



def request_type(running)
  puts "Type 1 to add, 2 to subtract, 3 to multiply, 4 to divide, or 5 to exit "
  select = gets.to_i

  if select == 1 
    puts "add"
    puts "enter first number"
    x = gets.chomp.to_f
    puts "enter second number"
    y = gets.chomp.to_f
    puts "the answer is"
    puts x + y
  elsif select == 2
    puts "subtract"
    puts "enter first number"
    x = gets.chomp.to_f
    puts "enter second number"
    y = gets.chomp.to_f
    puts "the answer is"
    puts x - y
  elsif select == 3
    puts "multiply"
    puts "enter first number"
    x = gets.chomp.to_f
    puts "enter second number"
    y = gets.chomp.to_f
    puts "the answer is"
    puts x * y
  elsif select == 4
    puts "divide"
    puts "enter first number"
    x = gets.chomp.to_f
    puts "enter second number"
    y = gets.chomp.to_f
    puts "the answer is"
    puts x / y
  else select == 5
    puts "You selected 5"
    Process.exit
  end

end

running = true

if initiate_calculator.include? "yes"
  print "Then let's start! "
  request_type(running)
else
  print "ok. bye."
end 

while running == true
  request_type(running)
end


# def calculate_answer(operator, x, y)
#   if operator == "add"
#     x + y
#   end
# end

# if select == 1
#   add = gets.chomp.to_i
#   puts "enter the first number"
# end

# def add(a, b)
#    a + b
#   end

#   def subtract(a, b)
#    a - b#   end

# end



# if input == "subtract"
# if input == "multiply"
# if input == "divide"
	
# end
#  end
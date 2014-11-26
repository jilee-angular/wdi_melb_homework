def menu
  puts " 
  Please select from the menu below which function 
  you would like Crunchanumba to perform by typing 
  the function letter.

  a = addition
  s = subtraction
  m = multiplication
  d = division
  e = exponation
  r = nth root

  Type q to quit Crunchanumba"

  print "function letter: "
  func = gets.chomp.downcase
end

puts "Welcome to Crunchanumba!"
func = menu

until func == "q"
  puts "Which two numbers would you like Crunchanumba to crunch?"
  puts "first number: "
  first_num = gets.chomp.to_i
  puts "second number: "
  second_num = gets.chomp.to_i

  case func
  when "a"
    #a(first_num, second_num)
    result = first_num + second_num
    puts "Crunchanumba has added #{first_num} and #{second_num} and the answer is #{result}!"  
  when "s"
    result = first_num - second_num
    puts "Crunchanumba has subtracted #{second_num} from #{first_num} and the answer is #{result}!"
  when "m"
    result = first_num * second_num
    puts "Crunchanumba has multiplied #{first_num} and #{second_num} and the answer is #{result}!"
  when "d"
    result = first_num / second_num
    puts "Crunchanumba has divided #{first_num} by #{second_num} and the answer is #{result}!"
  when "e"
    result = first_num ** second_num
    puts "Crunchanumba has raised #{first_num} by the power of #{second_num} and the answer is #{result}!"
  when "r"
    result = first_num ** (1.0/second_num)
    puts "Crunchanumba has found the #{second_num} root of  #{first_num} and the answer is #{result}!"
  else
    puts "Crunchanumba doesn't know the answer to that one!"

  end

func = menu
end

puts "You have quit Crunchanumba. Goodbye for now!"



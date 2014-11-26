def my_calc (var1, var2, var3)
 ans = 0
 if var2 == "+" 
 	ans = var1 + var3
 elsif var2 == "-" 
 	ans = var1 - var3
 elsif var2 == "*"
 	ans = var1 * var3
 else
 	ans = var1 / var3
 end
 
 return ans
end

puts "Please enter var1"
my_var1 = gets.chomp.to_i
puts "Plewse enter var 2"
my_var2 = gets.chomp.to_i
puts "Please choose an operation, +, -, *, /"
my_op = gets.chomp
answer = my_calc(my_var1, my_op, my_var2)
puts "YOur answer is #{answer}"

 	
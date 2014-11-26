# # When the result is a multiple of 3, puts 'Fizz'
# # When the result is a multiple of 5, puts 'Buzz'
# # When the result is a multiple of 3 and 5, puts 'FizzBuzz'

# def number(x)
#   if (x % 3 == 0) && (x % 5 == 0)
#     "FizzBuzz"
#   elsif x % 5 == 0
#     "Buzz"
#   elsif x % 3 == 0
#     "Fizz"
#   end
# end

# # 100.times do |n|
# #   puts "#{number(n)}"
# # end

# # returned_value = number(15)
# # p returned_value




# def hello(x)
#   "hello im on the first line"
#   if x % 3 == 0
#     return "yes its a multiple"
#   end
#   "I'm on the last line"
# end


# returned_value = hello(5)
# p returned_value.reverse
# p returned_value * 3
# p returned_value[0...2]

# def hello
#   puts 'hello, what\'s your name?'
#   gets.chomp
# end

# name = hello

# puts name


def ask(question)
  puts question
  gets.chomp
end

name = ask("What's your name?")
puts name
puts name.upcase
puts name.reverse.upcase.split
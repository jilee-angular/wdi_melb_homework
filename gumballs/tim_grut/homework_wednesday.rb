
lines = {
:n_line => ["Times Square", "n 34th","n 28th","n 23rd","Union Square","n 8th"],
:l_line => ["l 8th",'l 6th',"Union Square","l 3rd","l 1st"],
:six_line => ["Grand Central","6 33rd","6 28th","6 23rd","Union Square","Astor Place"]
}

	puts "Ahoy there, lets go on the MTA"
	puts "please input the line you're starting from (n or l or 6) to exit type 'exit'"
	input = gets.chomp

until 
	input == 'exit'

	case input
	when "n" then puts "Which Station? (#{lines[:n_line].join(", ")})"
	when "l" then puts "Which Station? (#{lines[:n_line].join(", ")})"
	when "6" then puts "Which Station? (#{ines[:six_line].join(", ")})"

	end
	input2 = gets.chomp

end

def get_vals(lines)
	puts "" 
	puts  "what line are you starting from"
	s_line= gets.chomp
	if s_line == "n"
		s_line = $lines[:n_line] 
	end
	if s_line == "l"
			s_line = $lines[:l_line] 
	end
	if s_line == "6"
			s_line = $lines[:six_line] 
	end

	puts ""

end


# puts "please input your departure station"
# 	input = gets.chomp

# 	puts "Please input your arrival station"

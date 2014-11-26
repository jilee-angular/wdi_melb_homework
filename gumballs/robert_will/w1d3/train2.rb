
require 'pry'


$lines = {
	:n => ["n_ts", "n_34", "n_28", "n_23", "us", "n_8"],
	:l => ["l_8", "l_6", "us", "l_3", "l_1"],
	:"6" => ["6_gc", "6_33", "6_28", "6_23", "us", "6_ap"]
}

# puts "Welcome to journey planner
# Choose a starting line (n,l, or 6) or type 'exit' to end: "
# s_line = gets.chomp

puts "Welcome to journey planner
Choose a starting line (n,l, or 6) or type 'exit' to end: "
s_line = gets.chomp

until s_line == "exit"

	s_line == $lines
	if s_line == false
		puts " "
		puts "Welcome to journey planner!"
		puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
		s_line = gets.chomp

	else
		puts " "
		puts "Please choose a starting line (n,l, or 6) or type 'exit' to end: "
		s_line = gets.chomp


		if s_line == "n"
			s_line = $lines[:n]
		end
		if s_line == "l"
			s_line = $lines[:l]
		end
		if s_line == "6"
			s_line = $lines[:"6"]
		end

		puts "Choose a station #{s_line}"

		s_station = s_line.index(gets.chomp)

		puts "Choose an end line: "

		e_line = gets.chomp

		if e_line == "n"
			e_line = $lines[:n]
		end
		if e_line == "l"
			e_line = $lines[:l]
		end
		if e_line == "6"
			e_line = $lines[:"6"]
		end

		puts "Choose a station to end (#{e_line}): "

		e_station = e_line.index(gets.chomp)	
	end

	

# binding.pry

end

get_vals

puts e_line

# until s_line == "exit"

# 	s_line == lines
# 		if s_line == false
# 			puts " "
# 			puts "Welcome to journey planner!"
# 			puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
# 			s_line = gets.chomp
# 		end

# 	if s_line == "n"
# 		puts " "
# 		puts "Choose a station from #{lines[:n].join(", ")})"
# 		starts = lines[:n].index(gets.chomp)
# 		puts "Choose a line to end (l, n, 6): "
# 		endline = gets.chomp

# 		if endline == "n"
# 			puts "Which stop? (#{lines[:n].join(", ")})"
# 			ends = lines[:n].index(gets.chomp)
			
# 			if ends > starts
# 				puts " "				
# 				puts lines[:n][starts..ends]
# 			end

# 			if ends < starts
# 				puts " "				
# 				puts lines[:n][ends..starts].reverse
# 			end

# 		end
		
# 		if endline == "l"
# 			puts "Which stop? (#{lines[:l].join(", ")})"
# 			ends = lines[:l].index(gets.chomp)

# 			if ends < lines[:l].index("us")
				
# 				if starts > 4
# 					puts " "					
# 					puts lines[:n][4..starts].reverse
# 					puts lines[:l][ends..2].reverse
# 				end

# 				if starts < 4
# 					puts " "					
# 					puts lines[:n][starts..4]
# 					puts lines[:l][ends..2].reverse
# 				end
# 			end

# 			if ends > lines[:l].index("us")

# 				if starts > 4
# 					puts " "					
# 					puts lines[:n][4..starts].reverse
# 					puts lines[:l][2..ends]
# 				end

# 				if starts < 4
# 					puts " "					
# 					puts lines[:n][starts..4]
# 					puts lines[:l][2..ends]
# 				end

# 			end

# 		end
		

# 		if endline == "6"
# 			puts "Which stop? (#{lines[:"6"].join(", ")})"
# 			ends = lines[:"6"].index(gets.chomp)

# 			if ends < lines[:"6"].index("us")
				
# 				if starts > 4
# 					puts " "					
# 					puts lines[:n][4..starts].reverse
# 					puts lines[:"6"][ends..4].reverse
# 				end

# 				if starts < 4
# 					puts " "					
# 					puts lines[:n][starts..4]
# 					puts lines[:"6"][ends..4].reverse
# 				end
# 			end

# 			if ends > lines[:"6"].index("us")

# 				if starts > 4
# 					puts " "					
# 					puts lines[:n][4..starts].reverse
# 					puts lines[:"6"][4..ends]
# 				end

# 				if starts < 4
# 					puts " "					
# 					puts lines[:n][starts..4]
# 					puts lines[:"6"][4..ends]
# 				end

# 			end

# 		end
		
# 	end

# 	puts " "
# 	puts "Welcome to journey planner!"
# 	puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
# 	s_line = gets.chomp

# end

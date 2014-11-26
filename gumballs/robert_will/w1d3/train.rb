require 'pry'


lines = {
	:n => ["n_ts", "n_34", "n_28", "n_23", "us", "n_8"],
	:l => ["l_8", "l_6", "us", "l_3", "l_1"],
	:"6" => ["6_gc", "6_33", "6_28", "6_23", "us", "6_ap"]
}

# def get_vars
# 	puts "Which line to start?: "
# 	s_line = gets.chomp.downcase
# 	puts " "
# 	puts "Which station to start?: "
# 	s_station = lines[s_line].index(gets.chomp.downcase)
# 	puts" "
# 	puts "Which line to end?: "
# 	e_line = gets.chomp.downcase.intern
# 	puts " "
# 	puts "Which station to end?: "
# 	e_station = lines[e_line].index(gets.chomp.downcase)
# end

# puts lines[:n]
# puts lines[:l]
# puts lines[:"6"]

# get_vars
	
# puts s_line
# puts s_station
# puts e_line
# puts e_station

puts "Welcome to journey planner
Choose a starting line (n,l, or 6) or type 'exit' to end: "
input = gets.chomp

until input == "exit"

	input == lines
		if input == false
			puts " "
			puts "Welcome to journey planner!"
			puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
			input = gets.chomp
		end

	if input == "n"
		puts " "
		puts "Choose a station from #{lines[:n].join(", ")})"
		starts = lines[:n].index(gets.chomp)
		puts "Choose a line to end (l, n, 6): "
		endline = gets.chomp

		if endline == "n"
			puts "Which stop? (#{lines[:n].join(", ")})"
			ends = lines[:n].index(gets.chomp)
			
			if ends > starts
				puts " "				
				puts lines[:n][starts..ends]
			end

			if ends < starts
				puts " "				
				puts lines[:n][ends..starts].reverse
			end

		end
		
		if endline == "l"
			puts "Which stop? (#{lines[:l].join(", ")})"
			ends = lines[:l].index(gets.chomp)

			if ends < lines[:l].index("us")
				
				if starts > 4
					puts " "					
					puts lines[:n][4..starts].reverse
					puts lines[:l][ends..2].reverse
				end

				if starts < 4
					puts " "					
					puts lines[:n][starts..4]
					puts lines[:l][ends..2].reverse
				end
			end

			if ends > lines[:l].index("us")

				if starts > 4
					puts " "					
					puts lines[:n][4..starts].reverse
					puts lines[:l][2..ends]
				end

				if starts < 4
					puts " "					
					puts lines[:n][starts..4]
					puts lines[:l][2..ends]
				end

			end

		end
		

		if endline == "6"
			puts "Which stop? (#{lines[:"6"].join(", ")})"
			ends = lines[:"6"].index(gets.chomp)

			if ends < lines[:"6"].index("us")
				
				if starts > 4
					puts " "					
					puts lines[:n][4..starts].reverse
					puts lines[:"6"][ends..4].reverse
				end

				if starts < 4
					puts " "					
					puts lines[:n][starts..4]
					puts lines[:"6"][ends..4].reverse
				end
			end

			if ends > lines[:"6"].index("us")

				if starts > 4
					puts " "					
					puts lines[:n][4..starts].reverse
					puts lines[:"6"][4..ends]
				end

				if starts < 4
					puts " "					
					puts lines[:n][starts..4]
					puts lines[:"6"][4..ends]
				end

			end

		end
		
	end

#=======================================================================
#====================starting line = l==================================
#=======================================================================

	if input == "l"
		puts " "
		puts "Choose a station from #{lines[:l].join(", ")})"
		starts = lines[:l].index(gets.chomp)
		puts "Choose a line to end (l, n, 6): "
		endline = gets.chomp

		if endline == "l"
			puts "Which stop? (#{lines[:l].join(", ")})"
			ends = lines[:l].index(gets.chomp)
			
			if ends > starts
				puts " "				
				puts lines[:l][starts..ends]
			end

			if ends < starts
				puts " "				
				puts lines[:l][ends..starts].reverse
			end
		end


		if endline == "n"
			puts "Which stop? (#{lines[:n].join(", ")})"
			ends = lines[:n].index(gets.chomp)

			if ends < lines[:n].index("us")
				
				if starts > 2
					puts " "					
					puts lines[:l][2..starts].reverse
					puts lines[:n][ends..4].reverse
				end

				if starts < 2
					puts " "					
					puts lines[:l][starts..2]
					puts lines[:n][ends..4].reverse
				end
			end

			if ends > lines[:n].index("us")

				if starts > 2
					puts " "					
					puts lines[:l][2..starts].reverse
					puts lines[:n][4..ends]
				end

				if starts < 2
					puts " "					
					puts lines[:l][starts..2]
					puts lines[:n][4..ends]
				end

			end

		end
		

		if endline == "6"
			puts "Which stop? (#{lines[:"6"].join(", ")})"
			ends = lines[:"6"].index(gets.chomp)

			if ends < lines[:"6"].index("us")
				
				if starts > 2
					puts " "					
					puts lines[:l][2..starts].reverse
					puts lines[:"6"][ends..4].reverse
				end

				if starts < 2
					puts " "					
					puts lines[:l][starts..2]
					puts lines[:"6"][ends..4].reverse
				end
			end

			if ends > lines[:"6"].index("us")

				if starts > 2
					puts " "					
					puts lines[:l][2..starts].reverse
					puts lines[:"6"][4..ends]
				end

				if starts < 2
					puts " "					
					puts lines[:l][starts..2]
					puts lines[:"6"][4..ends]
				end

			end

		end
		
	end

#=======================================================================
#====================starting line = 6==================================
#=======================================================================

	if input == "6"
		puts " "
		puts "Choose a station from #{lines[:"6"].join(", ")})"
		starts = lines[:"6"].index(gets.chomp)
		puts "Choose a line to end (l, n, 6): "
		endline = gets.chomp

		if endline == """6"""
			puts "Which stop? (#{lines[:"6"].join(", ")})"
			ends = lines[:"6"].index(gets.chomp)
			
			if ends > starts
				puts " "				
				puts lines[:"6"][starts..ends]
			end

			if ends < starts
				puts " "				
				puts lines[:"6"][ends..starts].reverse
			end

		end
		
		if endline == "l"
			puts "Which stop? (#{lines[:l].join(", ")})"
			ends = lines[:l].index(gets.chomp)

			if ends < lines[:l].index("us")
				
				if starts > 4
					puts " "		
					puts lines[:"6"][4..starts].reverse
					puts lines[:l][ends..2].reverse
				end

				if starts < 4
					puts " "
					puts lines[:"6"][starts..4]
					puts lines[:l][ends..2].reverse
				end
			end

			if ends > lines[:l].index("us")

				if starts > 4
					puts " "					
					puts lines[:"6"][4..starts].reverse
					puts lines[:l][2..ends]
				end

				if starts < 4
					puts " "					
					puts lines[:"6"][starts..4]
					puts lines[:l][2..ends]
				end

			end

		end
		

		if endline == "n"
			puts "Which stop? (#{lines[:n].join(", ")})"
			ends = lines[:n].index(gets.chomp)

			if ends < lines[:n].index("us")
				
				if starts > 4
					puts " "					
					puts lines[:"6"][4..starts].reverse
					puts lines[:n][ends..4].reverse
				end

				if starts < 4
					puts " "					
					puts lines[:"6"][starts..4]
					puts lines[:n][ends..4].reverse
				end
			end

			if ends > lines[:n].index("us")

				if starts > 2
					puts " "					
					puts lines[:"6"][4..starts].reverse
					puts lines[:n][4..ends]
				end

				if starts < 2
					puts " "
					puts lines[:"6"][starts..4]
					puts lines[:n][4..ends]
				end

			end

		end
		
	end





	puts " "
	puts "Welcome to journey planner!"
	puts "Choose a starting line (n,l, or 6) or type 'exit' to end: "
	input = gets.chomp
end

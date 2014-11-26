require 'pry'
# MTA subway exercise

# Subway stops
$subway_stops = {'N' => ["Time_Sq", "34th", "28th", "23rd", "Union_S", "8th"], 'L' => ["8th", "6th", "Union_S", "3rd", "1st"], '6' => ["Grand_C", "33rd", "28th", "23rd", "Union_S", "Astor_P"]}

# Define staring line
def start_line
	puts "\n" + "Enter the Line you are getting on: (type N, L, or 6) "
	@first_line = gets.chomp.downcase
end


# Define starting stop
def starting_stop
	current_line = start_line()
	if current_line == "n"
		puts "Which station are you getting on?"  
		puts $subway_stops['N']
		gets.chomp.downcase
	elsif current_line == "l"
		puts "Which station are you getting on?"  
		puts $subway_stops['L']
		gets.chomp.downcase
	elsif current_line == "6"
		puts "Which station are you getting on?"  
		puts $subway_stops['6']
		gets.chomp.downcase				
	end
end
first_stop = starting_stop()

# Define finishing line and set 
def finish_line
	puts "\n" + "Enter the Line you are getting off: (type N, L, or 6) "
	@end_line = gets.chomp.downcase
end


# Define finishing stop
def finishing_stop
	current_line = finish_line()
	if current_line == "n"	
		puts "Which station are you getting off?"  
		puts $subway_stops['N']
		gets.chomp.downcase
	elsif current_line == "l"
		puts "Which station are you getting off?"  
		puts $subway_stops['L']
		gets.chomp.downcase
	elsif current_line == "6"
		puts "Which station are you getting off?"  
		puts $subway_stops['6']
		gets.chomp.downcase				
	end
end	
last_stop = finishing_stop()


# Methods for the distance btw the same line
def same_n_line(a,b)
	result = ($subway_stops.values[0].index(b) - $subway_stops.values[0].index(a)).abs

	puts "There are total #{result} number of stations for the trip."
end

def same_l_line(a,b)
	result = ($subway_stops.values[1].index(b) - $subway_stops.values[1].index(a)).abs

	puts "There are total #{result} number of stations for the trip."
end

def same_6_line(a,b)
	result = ($subway_stops.values[2].index(b) - $subway_stops.values[2].index(a)).abs

	puts "There are total #{result} number of stations for the trip."
end

# if @first_line == @end_line
# 	if @first_line == "n"
# 		same_n_line(first_stop, last_stop)
# 	elsif @first_line
# 		same_l_line(first_stop,last_stop)
# 	elsif @first_line
# 		same_6_line(first_stop,last_stop)
# 	end
# else
# 	puts 'testing'
# end
									

# Distance btw the same line
case @first_line == @end_line
when @first_line == "n"
	same_n_line(first_stop,last_stop)
when @first_line == "l"
  same_l_line(first_stop,last_stop)
when @first_line == "6"
	same_6_line(first_stop,last_stop)
end


# Methods for the distance btw different lines 
def start_n_finish_l(a,b)
	result = (($subway_stops.values[0].index(a) - $subway_stops.values[0].index("Union_S")).abs) + (($subway_stops.values[1].index("Union_S")-($subway_stops.values[1].index(b))).abs)
	puts "There are total #{result} number of stations for the trip."
end

def start_n_finish_6(a,b)
	result = (($subway_stops.values[0].index(a) - $subway_stops.values[0].index("Union_S")).abs) + (($subway_stops.values[2].index("Union_S")-($subway_stops.values[2].index(b))).abs)
	puts "There are total #{result} number of stations for the trip."
end

def start_l_finish_n(a,b)
	result = (($subway_stops.values[1].index(a) - $subway_stops.values[1].index("Union_S")).abs) + (($subway_stops.values[0].index("Union_S")-($subway_stops.values[0].index(b))).abs)
	puts "There are total #{result} number of stations for the trip."
end

def start_l_finish_6(a,b)
	result = (($subway_stops.values[1].index(a) - $subway_stops.values[1].index("Union_S")).abs) + (($subway_stops.values[2].index("Union_S")-($subway_stops.values[2].index(b))).abs)
	puts "There are total #{result} number of stations for the trip."
end

def start_6_finish_n(a,b)
	result = (($subway_stops.values[2].index(a) - $subway_stops.values[2].index("Union_S")).abs) + (($subway_stops.values[0].index("Union_S")-($subway_stops.values[0].index(b))).abs)
	puts "There are total #{result} number of stations for the trip."
end

def start_6_finish_l(a,b)
	result = (($subway_stops.values[2].index(a) - $subway_stops.values[2].index("Union_S")).abs) + (($subway_stops.values[1].index("Union_S")-($subway_stops.values[1].index(b))).abs)
	puts "There are total #{result} number of stations for the trip."
end


# Distance btw different lines
case @first_line != @end_line
when @first_line == "n"
  if @end_line == "l"
  	start_n_finish_l(first_stop,last_stop)
  elsif @end_line == "6"
  	start_n_finish_6(first_stop,last_stop)
  end
when @first_line == "l"
  if @end_line == "l"
  	start_l_finish_n(first_stop,last_stop)
  elsif @end_line == "6"
  	start_l_finish_6(first_stop,last_stop)
  end
when @first_line == "6"
  if @end_line == "l"
  	start_6_finish_n(first_stop,last_stop)
  elsif @end_line == "6"
  	start_6_finish_l(first_stop,last_stop)
  end
end




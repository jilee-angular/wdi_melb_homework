def seperator
	puts "-----------------------------------"
end

seperator
puts "Hello and welcome to the subway planner."
seperator

puts "Please enter the line you will be getting on at: "
line_got_on = gets.chomp.downcase

seperator
puts "Now please enter the stop you are getting on at: "
stop_got_on = gets.chomp.downcase

seperator
puts "Now please enter the line you wish to get off at: "
line_get_off = gets.chomp.downcase

seperator
puts	"Now please enter the stop you wish to get off at: "
stop_get_off = gets.chomp.downcase

# line_got_on.index {|x|x=="b"


subway_router =	 {
	"line n" ["Times Square", "34th", "N line 28th", "23rd", "Union Square", "8th"],
	"line l" ["8th", "6th", "Union Square", "3rd", "1st"],
	"line_6" ["Grand Central", "33rd", "Line 6 28th", "23rd", "Union Square", "Astor Place"]
}

def stop_index(line, final_stop)
	subway_router[line].index(final_stop)
end

def stop_distance(line, enter_stop, exit_stop)
	stop_index(line, enter_stop) - stop_index(line, exit_stop)
end


# Students should create a program that models a simple subway system.

# The program takes the line and stop that a user is getting on at and the line and 
# stop that user is getting off at and prints the total number of stops for the trip.


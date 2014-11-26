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


SUBWAY = {
	"line n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
	"line l" => ["8th", "6th", "union square", "3rd", "1st"],
	"line 6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}

SAMESTOP = (SUBWAY["line n"] & SUBWAY["line l"] & SUBWAY["line 6"]).first

def stop_index(line, stop)
	SUBWAY[line].index(stop)
end

def stop_distance(line, enter_stop, exit_stop)
	stop_index(line, enter_stop) - stop_index(line, exit_stop)
end

def distance(entry, exit)
	line_entry, stop_entry = entry
	line_exit, stop_exit = exit

	if line_entry == line_exit
		dist = stop_distance(line_entry,stop_entry,stop_exit)
	else
		dist = stop_distance(line_entry,stop_entry,SAMESTOP) -
					stop_distance(line_exit,stop_exit,SAMESTOP)
	end

	return dist.abs
end

puts distance([line_got_on,stop_got_on],[line_get_off,stop_get_off])
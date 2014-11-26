def seperator
	puts "-----------------------------------"
end

seperator
puts "Hello and welcome to the subway planner."
seperator

puts "Please enter the line you will be getting on at: "
line_on = gets.chomp.to_sym

seperator
puts "Now please enter the stop you are getting on at: "
stop_on = gets.chomp.to_sym

seperator
puts "Now please enter the line you wish to get off at: "
line_off = gets.chomp.to_sym

seperator
puts "Now please enter the stop you wish to get off at: "
stop_off = gets.chomp.to_sym


subway_router =	 {
	"line n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
	"line l" => ["8th", "6th", "union square", "3rd", "1st"],
	"line 6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}


LINES = {
    linen: [:timessquare,:n34th,:n28th,:n23rd,:unionsquare,:n8th],
	linel: [:l8th,:l6th,:unionsquare,:l3rd,:l1st],
	line6: [:grandcentral,:six33rd,:l28th,:l23rd,:unionsquare,:astorplace]
}
COMMONSTOP = (LINES[:linen] & LINES[:linel] & LINES[:line6]).first

def stop_index(line, stop)
	LINES[line].index(stop)
end

def stop_distance(line, enter_stop, exit_stop)
	stop_index(line, enter_stop) - stop_index(line, exit_stop)
end

def distance(entry, exit)
    
    # sets line_entry and stop entry to entry
	line_entry, stop_entry = entry
	
	# sets line exit and dtop exit to exit
	line_exit, stop_exit = exit

    
	if line_entry == line_exit
		dist = stop_distance(line_entry,stop_entry,stop_exit)
	else
		dist = stop_distance(line_entry,stop_entry,COMMONSTOP) -
					stop_distance(line_exit,stop_exit,COMMONSTOP)
	end

	return dist.abs
end

# sends values to distance
puts distance([line_on,stop_on],[line_off,stop_off])


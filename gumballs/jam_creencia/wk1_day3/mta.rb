
subway_lines = {

	"N" => {
		:stops => ["Times Square", "34th", "28th(N)", "23rd", "Union Square", "8th(N)"]
		},
	"L" => {
		:stops => ["8th(L)", "6th", "Union Square", "3rd", "1st"]
		},
	"6" => {
		:stops => ["Grand Central", "33rd", "28th(6)", "23rd(6)", "Union Square", "Astor"]
		}
}


def menu 
	puts "		
	>>SUBWAY LINES<<
  	  [N] [L] [6]
	"
end

def check_typo_line(input, subway_lines)
	if subway_lines.has_key?(input) == false
		puts "This program is fat-fingers intolerant.
		"
		abort
	end
end


#Program starts and takes inputs

puts "
>>Welcome to MTA Journey Planner!<<"

menu

puts "Enter subway line to get ON:"
line_on = gets.chomp

check_typo_line(line_on, subway_lines)

linestops_on = subway_lines[line_on][:stops]

puts "Stops available: #{linestops_on}"
puts "Enter stop to get ON:"
stop_on = gets.chomp



menu

puts "Enter subway line to get OFF:"
line_off = gets.chomp

check_typo_line(line_off, subway_lines)

linestops_off = subway_lines[line_off][:stops]

puts "Stops available: #{linestops_off}"
puts "Enter stop to get OFF:"
stop_off = gets.chomp




#Takes the index of the start/end stops
$start = linestops_on.index(stop_on)
$stop = linestops_off.index(stop_off)


#Takes the index of the intersection (Union Square)
$intersec1 = linestops_on.index("Union Square")
$intersec2 = linestops_off.index("Union Square")



#Takes the difference between the starting station and the intersection
diff1 = $start - $intersec1 
diff1 = diff1.abs


#Takes the difference between the ending station and the intersection
diff2 = $stop - $intersec2
diff2 = diff2.abs


#Number of stops from Union Square
from_us1 = $intersec1 + diff1
from_us2 = $intersec2 + diff2


#Gives an output if the route is going backwards in the array
$part1_backward = linestops_on[$intersec1..from_us1]

$part2_backward =
	if $stop < $intersec2
		to_rev = linestops_off[$stop..$intersec2]
		to_rev.reverse
	else
		linestops_off[$intersec2..$stop]
	end


#The route is split in two parts from Union Square
def part1(linestops_on)
	if $start < $intersec1 
		linestops_on[$start..$intersec1]
	else
		$part1_backward.reverse
	end
end


def part2(linestops_off)
	if $intersec2 < $stop
		linestops_off[$intersec2..$stop]
	else
		$part2_backward
	end
end


merge = part1(linestops_on) << part2(linestops_off)

route = merge.flatten.uniq!

puts "
Your journey's stops are: 

#{route.join(" --> ")}

Thank you for using MTA Journey Planner!

"













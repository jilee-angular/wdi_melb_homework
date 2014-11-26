
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

def check(input, subway_lines)
	if subway_lines.has_key?(input) == false
		puts "Too bad you have fat fingers. Start again."
		abort
	end
end

#PROGRAM STARTS, TAKES INPUTS

puts "
>>Welcome to MTA Journey Planner!<<"

menu

puts "Enter subway line to get ON:"
line_on = gets.chomp


check(line_on, subway_lines)


linestops_on = subway_lines[line_on][:stops]

puts "Stops available: #{linestops_on}"

puts "Enter stop to get ON:"
stop_on = gets.chomp



menu

puts "Enter subway line to get OFF:"
line_off = gets.chomp

check(line_off, subway_lines)

linestops_off = subway_lines[line_off][:stops]

puts "Stops available: #{linestops_off}"

puts "Enter stop to get OFF:"
stop_off = gets.chomp


#PROCESSING THE ROUTE


start = linestops_on.index(stop_on)
stop = linestops_off.index(stop_off)


intersec1 = linestops_on.index("Union Square")
intersec2 = linestops_off.index("Union Square")


merged_line = linestops_on[start...intersec1] << linestops_off[intersec2..stop]

route = merged_line.flatten

puts "
Your journey's stops are: 

	#{route.join(" --> ")}

Thank you for using MTA Journey Planner!

"




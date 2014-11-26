SUBWAY =	 {
	"line n" => ["times square", "34th", "n line 28th", "23rd", "union square", "8th"],
	"line l" => ["8th", "6th", "union square", "3rd", "1st"],
	"line 6" => ["grand central", "33rd", "line 6 28th", "23rd", "union square", "astor place"]
}

def stop_index(line, stop)
	SUBWAY[line].index(stop)
end

puts stop_index(1,3)

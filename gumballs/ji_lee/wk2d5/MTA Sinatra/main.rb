require 'sinatra'
require 'pry'

get '/' do 
  erb :forms
end

get '/cloud' do

  starting_line = params['start_ln'] 
  starting_stop = params['start_st']
  ending_line = params['exit_ln']
  ending_stop = params['exit_st']

  # Subway stops
  stations = {'N' => ["ts", "34th", "28th", "23rd", "us", "8th"], 'L' => ["8th", "6th", "us", "3rd", "1st"], 'S' => ["gc", "33rd", "28th", "23rd", "us", "ap"]}


  # Lines
  n_values = stations.values[0]     # line n
  n_values_rev = n_values.reverse  
  l_values = stations.values[1]     # line l
  l_values_rev = l_values.reverse   
  s_values = stations.values[2]     # line s
  s_values_rev = s_values.reverse

  n_start = n_values.index(starting_stop)     # n stop start value
  n_end = n_values.index(ending_stop)         # n stop end value
  l_start = l_values.index(starting_stop)     # l stop start value
  l_end = l_values.index(ending_stop)         # l stop end value
  s_start = s_values.index(starting_stop)     # n stop start value
  s_end = s_values.index(ending_stop)         # n stop end value

  if starting_stop == ending_stop
    erb :tryagain
  end

  # Distance between same line
  if starting_line == ending_line
    if starting_line == "n"

      result = (n_start - n_end).abs 

      if n_start < n_end
        show_route = n_values.slice(n_start..n_end)
      elsif n_start > n_end
       show_route = n_values.slice(n_end..n_start).reverse
      end
    elsif starting_line == "l"  
      result = (l_start - l_end).abs
      if l_start < l_end
        show_route = l_values.slice(l_start..l_end)
      elsif l_start > l_end
        show_route = l_values.slice(l_end..l_start).reverse
      end
    elsif starting_line == "s"  
      result = (s_start - s_end).abs
      if s_start < s_end
        show_route = s_values.slice(s_start..s_end)
      elsif s_start > s_end
        show_route = s_values.slice(s_end..s_start).reverse
      end
    end
  end

  # Distance between different line.. calculate to and from union square
  if starting_line != ending_line
    if starting_line == "n" && ending_line == "l"     # n -> us -> l
      result = (n_start - 4).abs + (2 - l_end).abs
      if (n_start - 4) < 0 && (2 - l_end) < 0      # n up, l up     
        show_route = (n_values.slice(n_start...4) + l_values.slice(2..l_end))
      elsif (n_start - 4) < 0 && (2 - l_end) > 0   # n  up, l down   
        show_route = (n_values.slice(n_start...4) + l_values.slice(l_end..2).reverse)
      elsif (n_start - 4) > 0 && (2 - l_end) < 0  # n down, l up  
        show_route = l_values.slice(2..l_end).unshift(n_values.slice(n_start))
      elsif (n_start - 4) > 0 && (2 - l_end) > 0  # n down, l down
        show_route = l_values.slice(l_end..2).reverse.unshift(n_values.slice(n_start))
      end  
    elsif starting_line == 'n' && ending_line == 's'      # n -> us -> s
      result = (n_start - 4).abs + (4 - s_end).abs       
      if (n_start - 4) < 0 && (4 - s_end) < 0       # n up, s up     
        show_route = (n_values.slice(n_start...4) + s_values.slice(4..s_end))
      elsif (n_start - 4) < 0 && (4 - s_end) > 0       # n up, s down   
        show_route = (n_values.slice(n_start...4) + s_values.slice(s_end..4).reverse)
      elsif (n_start - 4) > 0 && (4 - s_end) < 0     # n down, s up    
        show_route = s_values.slice(4..s_end).unshift(n_values.slice(n_start))

      elsif (n_start - 4) > 0 && (4 - s_end) > 0      # n down, s down    
        show_route = s_values.slice(s_end..4).reverse.unshift(n_values.slice(n_start))
      end
    elsif starting_line == 'l' && ending_line == 'n'      # l -> us -> n
      result = (l_start - 2).abs + (4 - n_end).abs  
       if (l_start - 2) < 0  && (4 - n_end) < 0     # l up, n up
        show_route = (l_values.slice(4 - n_end) + n_values.slice(4..n_end))
      elsif (l_start - 2) < 0  && (4 - n_end) > 0     # l up, n down
        show_route = (l_values.slice(l_start...2) + n_values.slice(n_end..4).reverse)
      elsif (l_start - 2) > 0 && (4 - n_end) < 0      # l down, n up
        show_route = n_values.slice(4..n_end).unshift(l_values.slice(2..l_start).reverse).flatten.uniq
      elsif (l_start - 2) > 0 && (4 - n_end) > 0      # l down, n down 
        show_route = n_values.slice(n_end..4).reverse.unshift(l_values.slice(2..l_start).reverse).flatten.uniq
      end
    elsif starting_line == 'l' && ending_line == 's'      # l -> us -> s
      result = (l_start - 2).abs + (4 - s_end).abs
      if (l_start - 2) < 0 && (4 - s_end) < 0       # l up, s up
        show_route = (l_values.slice(l_start...2) + s_values.slice(4..s_end))
      elsif (l_start - 2) < 0  && (4 - s_end) > 0     # l up, s down
        show_route = (l_values.slice(l_start...2) + s_values.slice(s_end..4).reverse)
      elsif (l_start - 2) > 0 && (4 - s_end) < 0        # l down, s up
        show_route = s_values.slice(4..s_end).unshift(l_values.slice(2..l_start).reverse).flatten.uniq

      elsif (l_start - 2) > 0 && (4 - s_end) > 0      # l down, s down
        show_route = s_values.slice(s_end..4).reverse.unshift(l_values.slice(2..l_start).reverse).flatten.uniq
      end
    elsif starting_line == 's' && ending_line == 'n'      # s -> us -> n
      result = (s_start - 4).abs + (4 - n_end).abs
        # s up, n up
      if (s_start - 4) < 0 && (4 - n_end) < 0
        show_route = (s_values.slice(s_start..4) + n_values.slice(4..n_end)).uniq
        # s up, n down
      elsif (s_start - 4) < 0 && (4 - n_end) > 0
        show_route = s_values.slice(s_start..4) + n_values.slice(n_end..4).reverse.drop(1)
        # s down, n up
      elsif (s_start - 4) > 0 && (4 - n_end) < 0
        show_route = n_values.slice(4..n_end).unshift(s_values.slice(4..s_start).reverse).flatten.uniq
        # s down, n down
      elsif (s_start - 4) > 0 && (4 - n_end) > 0
          show_route = n_values.slice(n_end..4).reverse.unshift(s_values.slice(4..s_start).reverse).flatten.uniq
      end
    elsif starting_line == 's' && ending_line == 'l'      # s -> us -> l
      result = (s_start - 4).abs + (2 - l_end).abs
        # s up, l up
      if (s_start - 4) < 0 && (2 - l_end) < 0 
        show_route = (s_values.slice(s_start..4) + l_values.slice(2..l_end)).uniq
        # s up, l down
      elsif (s_start - 4) < 0 && (2 - l_end) > 0
        show_route = (s_values.slice(s_start..4) + l_values.slice(l_end..2).reverse).uniq
        # s down, l up
      elsif (s_start - 4) > 0 && (2 - l_end) < 0 
        show_route = l_values.slice(2..l_end).unshift(s_values.slice(4..s_start).reverse).flatten.uniq
        # s down, l down
      elsif (s_start - 4) > 0 && (2 - l_end) > 0
        show_route = l_values.slice(l_end..2).reverse.unshift(s_values.slice(4..s_start).reverse).flatten.uniq
      end
    end
  end  

  if result >= 1
    @stop_num = "There are #{result+1} stops from #{starting_stop.upcase} to #{ending_stop.upcase}." 
  elsif result == 1
    @stop_num = "There is #{result} stop from #{starting_stop.upcase} to #{ending_stop.upcase}."
  elsif result == 0
    @stop_num = "There are no stops from #{starting_stop.upcase} to #{ending_stop.upcase}."
  end

  @journey = show_route.each {|name| print name.upcase + " "} 
  


  erb :test
end

get '/:checking' do
  "What is going on? this is #{params['starting_line']}"
end

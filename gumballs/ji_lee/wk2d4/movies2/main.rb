require 'sinatra'
require 'pry'
require 'httparty'

get '/' do  
  erb :index
end

get '/forms' do 
  erb :forms
end


get '/show_movie_result' do 
    if params['site_search'].include?(" ")
      params['site_search'].gsub!(/\s+/, '+')
    else
      params['site_search']
    end

    params['site_search'].gsub!(/\s+/, '+')

    results= HTTParty.get("http://www.omdbapi.com/?s=#{params['site_search']}")

    # result = JSON.parse(response)

    # @search = result["Search"]

    @hash = JSON.parse(results)

    @output = @hash["Search"]

    erb :show
end



get "/detail/:name" do 
  
    result = params[:name].gsub(/\s+/, '+')


    results = HTTParty.get("http://www.omdbapi.com/?t=#{result}")

    @hash_two = JSON.parse(results)

   @hash_two
  erb :details

end

get '/search' do 
  erb :search
end

# <% @output.length.times do |put| %>     
#       <a href="/detail/<%=@output[put]["Title"] %>">
#        <%= @output[put]["Title"] %></a>
#       <br>
#     <% end %> 


#scribbles
# @movies.each do |movie|
# <a href="/movie_details/<%= movie["Title"] %><p> movie["Title"] %></a>

# .each do |key, value|





# <% @search.each do|list| %>
# <a href="/detail/"><%= list["Title"] %><p><%= list["Title"] %></p></a>
# <% end %>

# </div>

  #     def show
  #       @hash['Search'].each do |x|
  #         @result = puts x
  #       end
  #     end
  #     @output = show()

  #     @output.length.times do |put|
  #       @output[put]["Title"]
  #     end

  # <% @output.length.times do |put| %>     
  #     <a href="/detail/<%=@output[put]["Title"] %>">
  #      <%= @output[put]["Title"] %></a>
  #     <br>
  #   <% end %> 

  # <% @output.each do |list| %>
  #   <a href="/detail/"><%= list["Title"] %><p><%= list["Title"] %></p></a>







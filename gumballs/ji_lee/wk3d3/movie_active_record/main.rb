require 'sinatra'
require 'pry'
require 'httparty'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'moviesdb'
  )

class Movie < ActiveRecord::Base
  validates_presence_of :title
end

get '/' do  
  erb :forms
end

get '/forms' do 
  erb :forms
end

get '/show_movie_result' do 
  if params['site_search'].empty?
    erb :error
  else
    # Check to see if 'site_search' param includes spaces or not
    if params['site_search'].include?(" ")
      result = params['site_search'].gsub!(/\s+/, '+')
    else
      result = params['site_search']
    end

    results= HTTParty.get("http://www.omdbapi.com/?s=#{result}")
    hash = JSON.parse(results)
    @output = hash["Search"]
    if @output != nil
      erb :show
    else
      erb :error
    end
  end
end

get "/detail/:name" do 
    movie_selection = params[:name].gsub(/\s+/, '+') # single movie selected
   
      results = HTTParty.get("http://www.omdbapi.com/?t=#{movie_selection}")
      @hash_two = JSON.parse(results)
    
      # created a database to track movies that are clicked
      @movies = Movie.new
      @movies.title = @hash_two["Title"]
      @movies.year = @hash_two["Year"]
      @movies.genre = @hash_two["Genre"]
      @movies.director = @hash_two["Director"]
      @movies.poster = @hash_two["Poster"]
      @movies.save
  erb :details
end

get '/search' do 
  erb :search
end

get '/history' do
  @movies = Movie.all
  erb :history
end




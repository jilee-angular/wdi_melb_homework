     
require 'sinatra'
require 'pry'
require 'active_record'

config = {
  adapter: 'postgresql',
  host: 'localhost',
  database: 'fumblr'
}

ActiveRecord::Base.establish_connection(config)

class Post < ActiveRecord::Base
end

after do 
  ActiveRecord::Base.connection.close
end

get '/' do

  @posts = Post.all.order(created_at: :desc)
  erb :index
end


get '/posts/new' do # show the new post form
  erb :new
end

post '/posts' do # when user submit the form
  post = Post.new(params)
  post.created_at = Time.now.strftime("%m/%d/%Y")  
  post.save
  redirect to('/')
end

get '/posts/:id' do 
  @post = Post.find(params[:id])
  erb :show
end

get '/posts/:id/edit' do  # show the edit form
  @post = Post.find(params[:id])
  erb :edit
end

post '/posts/:id' do 
  post = Post.find(params[:id])
  post.title = params[:title]
  post.image_url = params[:image_url]
  post.content = params[:content]
  post.created_at = Time.now.strftime("%m/%d/%Y")
  post.save
  
  redirect to ("/posts/#{params[:id]}")
end




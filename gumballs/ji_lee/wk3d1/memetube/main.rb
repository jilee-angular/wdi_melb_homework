require 'sinatra'
# require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  sql = "select * from videos;"
  @rows = run_sql(sql)
  erb :index
end

get '/videos' do
  @rows = run_sql("select * from videos;")
  erb :index
end

get '/genre/:genre' do
  sql = "SELECT * FROM videos WHERE genre='#{params[:genre]}'"
  @rows = run_sql(sql)
  erb :genre
end

post 'videos/:id/delete' do
  sql = "DELETE FROM videos WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to('/')
end

get '/videos/:id/edit' do
  sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
  @rows = run_sql(sql)
  @row = @rows[0]
  erb :edit
end

post '/videos/:id' do
  sql = "UPDATE videos SET title='#{params[:title]}', description='#{params[:description]}', video_url='#{params[:video_url]}', genre='#{params[:genre]}' WHERE id= #{params[:id]}"
  run_sql(sql)
  redirect to ("/videos/#{params[:id]}")
end

get '/videos/new' do
  erb :new
end

get '/videos/:id' do 
  sql = "select * from videos where id = #{params[:id]}"
  @rows = run_sql(sql)
  erb :show
end

post '/videos' do
  sql = "INSERT INTO videos (title,description,video_url,genre) VALUES ('#{params['title']}','#{params['description']}','#{params['video_url']}','#{params['genre']}')"

  run_sql(sql)
  redirect to('/')
end

def run_sql(sql)
  db = PG.connect(:dbname => 'memetube') 
  rows = db.exec(sql)
  db.close
  return rows
end


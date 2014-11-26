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

binding.pry
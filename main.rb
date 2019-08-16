

require 'sinatra'
require 'sinatra/reloader'

also_reload File.expand_path(__dir__, "views/*")
also_reload File.expand_path(__dir__, "models/*")

require_relative 'database_config'
require_relative 'models/user'
require_relative 'models/article'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @articles = Article.all
  erb :index
end

get '/api/articles' do
  content_type :json
  Article.all.to_json
end





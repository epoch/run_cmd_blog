# setup app environment
require_relative 'database_config'
require_relative 'models/user'
require_relative 'models/article'

Article.destroy_all
User.destroy_all

user = User.new
user.email = "dt@ga.co"
user.password = "pudding"
user.save

title = %w|cake pudding muffin ribs jelly lobster cakey steak|

10.times do 
  article = Article.create(
    title: "#{title.sample} #{title.sample}", 
    user_id: user.id
  )
end



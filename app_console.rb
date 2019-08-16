require 'pry'

# relative to this file
require_relative 'database_config'
require_relative 'models/user'
require_relative 'models/article'

# ActiveRecord::Base.logger = Logger.new(STDOUT)

binding.pry
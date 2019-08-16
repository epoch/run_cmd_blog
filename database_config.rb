require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'run_cmd_blog'
}

ActiveRecord::Base.establish_connection(options)
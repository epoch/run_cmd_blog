class User < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  has_secure_password
end
class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :questions
	has_many :answers
  validates :username, uniqueness: true, presence: true, length: { maximum: 64 }
  validates :email, uniqueness: true, presence: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  validates :password, presence: true


  def self.authenticate(user_params)
    User.find_by(user_params) || nil
  end
end
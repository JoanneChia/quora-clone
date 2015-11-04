class User < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	has_many :questions
	has_many :answers
  validates :username, uniqueness: true, presence: true, length: { maximum: 64 }
  validates :email, uniqueness: true, presence: true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
  validates :password, presence: true


  def self.authenticate(email , password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
    @user = User.find_by(email: email)
    if user && user.password == password
    	return @user.id if @user.password == password
    	return @user
    else
    	return "Username is invalid"
    end
  end
end
get '/' do
	@signup_message = session[:message] if session[:message]
  erb :"index"
end

get '/home' do
	redirect to '/'
end 

post '/signup' do
	@user = User.create(params[:user])
  if user.save
  	session[:message] = "Successful signup! Please login now"
	 	redirect to '/users/1'
	else
	 	erb :'registrations/signup'
	end
end

get '/login' do
	erb :"static/newsfeed"
end
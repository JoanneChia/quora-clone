helpers SessionHelper

get '/login' do
	erb :"session/login"	
end

get '/users/dashboard' do

end

post '/session' do
	session[:user] = User.authenticate(params[:user])

	unless current_user.nil?
		redirect to '/users/profile'
	else
		flash[:error] = "Username does not exist! Please try again"
		redirect to '/'
end
end 

post '/logout' do
	redirect '/'
end

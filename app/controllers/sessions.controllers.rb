helpers SessionHelper

get '/session/login' do
	erb :"sessions/profile"	
end

get '/users/dashboard' do

end

post '/session' do
	session[:user] = User.authenticate(params[:user])
	unless current_user.nil?
		redirect '/users/profile'
	else
	redirect to "/"
end
end 

post '/logout' do

end

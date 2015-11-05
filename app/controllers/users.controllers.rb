#index
# get '/users' do	
# end
helpers SessionHelper

#new
get '/users/new' do
	erb :"/users/new"
end 

# show specific user
get '/users/:id' do
	@page_title = "Quora - Your User Profile"
	erb :"/users/profile"
end 

#edit 
get 'users/:id/edit' do
end 

#create 
post '/users' do
	@user = User.new(params[:user])
	if @user.save
	byebug
		session[:user_id] = @user.id
		redirect to '/users/profile'
	else
		@error = @user.errors.full_messages[0]
		erb :"/users/new"
	end 
end	

#update 
post '/users/:id/update' do 
	redirect to '/'
end


# #delete 
# post '/users/:id/delete' do
# end 

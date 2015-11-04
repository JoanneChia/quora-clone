#index
# get '/users' do	
# end

#new
get '/users/new' do
	erb :"/users/new"
end 

# #show 
# get '/users/:id' do
# end 

#edit 
get 'users/:id/edit' do
end 

#create 
post '/users' do
	user = User.create(params[:user])
	redirect to '/users/new'

end 

#update 
post '/users/:id/update' do 
	redirect to '/'
end


# #delete 
# post '/users/:id/delete' do
# end 

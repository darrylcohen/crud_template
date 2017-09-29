post '/session' do
  # Find the user based on the params passed from the login page
  # If its a valid user and the password is correct
      #redirect where ever
  # else
      # show invalid message and go back to login
  # end
  # =======

  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
     redirect '/things'
   else
     @message = 'Incorrect email or password'
     erb :login #not redirect as want to keep variables
   end
end

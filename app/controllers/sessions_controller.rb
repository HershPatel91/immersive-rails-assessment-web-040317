class SessionsController < ApplicationController

  def new

  end

def create
	# binding.pry	
	@user = User.find_by(username: params[:name])
	if @user != nil
    return redirect_to(controller: 'sessions', action: 'new') unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to controller: 'appearances', action: 'new'
    # binding.pry
	else
	redirect_to controller: "sessions", action:'new'
	end
    # binding.pry
end


  def destroy
  	 session[:user_id] = nil
  	 redirect_to :new
 end

end

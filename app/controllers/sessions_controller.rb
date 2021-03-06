class SessionsController < ApplicationController
	def create
	  user = login(params[:email], params[:password], params[:remember_me])
	  if user
	    redirect_back_or_to games_url, :notice => "Logged in!"
	  else
	    flash.now.alert = "Email or password was invalid"
	    render :new
	  end
	end

	def destroy
	  logout
	  redirect_to games_url, :notice => "Logged out!"
	end
end

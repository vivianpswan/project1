class SessionController < ApplicationController

def new

end

def create
  tutor = Tutor.find_by :email => params[:email]
    if tutor.present? && tutor.authenticate(params[:password])
      session[:tutor_id] = tutor.id # Log the user in
      redirect_to root_path
    else
      flash[:error] = "Invalid email address or password"
      redirect_to login_path
    end
end

def destroy
  session[:user_id] = nil # Log the user out
  redirect_to login_path
end

end
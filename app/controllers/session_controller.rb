class SessionController < ApplicationController
    def index

    end
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            cookies[:token] = user.token
            puts user.id
            puts user.token
            redirect_to dash_path 
        else
            flash[:error]= "Email or password is invalid"
            redirect_to login_path
            puts "Fail"
        end
       
    end
end

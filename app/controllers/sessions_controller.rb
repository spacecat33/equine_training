class SessionsController < ApplicationController
    
    def new
        redirect_to root_path if logged_in?
    end

    
    def create
      @user =
        # User.find_or_create_by(uid: auth['uid']) do |u|
        #   u.name = auth['info']['name']
        #   u.email = auth['info']['email']
        #   u.image = auth['info']['image']
        end
  
      session[:user_id] = @user.id
  
      render 'welcome/home'
    end
  
    def destroy
        logout
        redirect_to root_path
    end

    private
  
    def auth
      request.env['omniauth.auth']
    end

    def logout
        session.clear
    end
  end
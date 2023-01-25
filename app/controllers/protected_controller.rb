class ProtectedController < ApplicationController
     before_action :authenticate_user!

    #  i.e.  def redirect_if_not_logged_in
        # redirect_to new_user_session_path unless user_signed_in?
    # end

    # then make future controllers where you want this 
    # 'before_action' applied to inherit from 
    # protection_controller instead of 
    # application_controller.
end

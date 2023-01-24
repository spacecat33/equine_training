class ProtectedController < ApplicationController
    #  before_action :authenticate_user!
    
    # then make future controllers where you want this 
    # 'before_action' applied to inherit from 
    # protection_controller instead of 
    # application_controller.
end

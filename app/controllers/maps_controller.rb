class MapsController < ApplicationController
  def index

    if signed_in_user?
      @user = current_user
    else
      redirect_to new_user_path
    end
    
  end
end

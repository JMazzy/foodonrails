class UsersController < ApplicationController

  def new
    @user = User.new
    render :new, locals: { location: location }
  end


  def create
    @user = User.new( user_params )
    if @user.save
      sign_in(@user)
      flash[:success] = "Created new user!"
      redirect_to maps_path
    else
      flash.now[:error] = "Failed to Create User!"
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(   :username,
                                    :email,
                                    :password,
                                    :password_confirmation,
                                    :latitude,
                                    :longitude   )
  end

end

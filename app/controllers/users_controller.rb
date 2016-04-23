class UsersController < ApplicationController
  def login
    @user=User.find_by(username: user_params[:username])
    session[:user_id]=@user.id
    redirect_to(topics_path)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end

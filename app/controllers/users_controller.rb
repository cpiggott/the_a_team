class UsersController < ApplicationController
def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  @role = Role.find_by_r(params[:role_input])
  @user.roles << @role 

  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role)
end

end

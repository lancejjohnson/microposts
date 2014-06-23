class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Rails uses the 'name=' values in the html to determine the params
    # applicable to a user.
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Microposts!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user)
      .permit(:name, :email, :password, :password_confirmation)
  end
end

class UsersController < ApplicationController
  def new
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new

  end

  def create

    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Find More Leads App #{@user.firstname}!"
      redirect_to @user
    else
      render 'new'
    end
  end


  ## only accept these paramaters
  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
    end


end

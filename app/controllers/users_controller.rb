class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :show]

  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)

    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @personal_statement = @user.personal_statement
    @image = @user.image
    @responses = @user.responses
  end

  def edit
    @user =  User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path
    end
  end

  private

  def user_params
    params.require(:user).
      permit(:email, :password, :personal_statement, :image, :region_id)
  end
end

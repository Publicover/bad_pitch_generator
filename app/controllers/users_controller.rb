class UsersController < ApplicationController
  before_action :set_user, except: :index

  def index
    @users = User.all
  end

  def show; end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to users_path, notice: 'User updated.'
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: 'User deleted.'
  end

  private

    def user_params
      params.require(:user).permit(:email, :first_name, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end
end

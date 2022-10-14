class Admin::UsersController < ApplicationController
  before_action :set_user, except: :index

  def index
    @users = searched_scope(User.all, "email", "search_by_user_info")
    @users = @users.order(sort_column('email') + " " + sort_direction) if params[:column].present?
    @pagy, @users = pagy(@users)
  end

  def edit; end

  def update
    @user.update(user_params)
    redirect_to admin_users_path, notice: 'User updated.'
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: 'User deleted.'
  end

  private

    def user_params
      params.require(:user).permit(:search, :email, :first_name, :password)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def sortable_columns
      %w[email first_name]
    end

    def filter_param_keys
      %i[search column direction email]
    end
end

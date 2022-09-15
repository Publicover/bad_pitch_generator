class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :authenticate_user!

  # rubocop:disable Lint/UnusedMethodArgument
  def after_sign_in_path_for(resource)
    admin_users_path
  end
  # rubocop:enable Lint/UnusedMethodArgument
end

class ApplicationController < ActionController::Base
  include Pagy::Backend

  before_action :authenticate_user!
  helper_method :sort_column, :sort_direction
  helper_method :filter_param_keys

  # rubocop:disable Lint/UnusedMethodArgument
  def after_sign_in_path_for(resource)
    admin_users_path
  end
  # rubocop:enable Lint/UnusedMethodArgument

  def sort_column(column_name)
    sortable_columns.include?(params[:column]) ? params[:column] : column_name
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def filter_param_keys
    []
  end

  def scope(obj, first_column)
    if params[:column].present?
      obj.order(sort_column(first_column) + " " + sort_direction)
    else
      obj
    end
  end

  def searched_scope(obj, first_column, search_method)
    return scope(obj, first_column) if params[:search].blank?

    scope(obj, first_column).send(search_method, params[:search])
  end
end

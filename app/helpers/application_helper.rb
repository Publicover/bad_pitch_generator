module ApplicationHelper
  include Pagy::Frontend

  def active_if(view_path)
    'active' if current_page?(view_path)
  end

  def sort_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column(column) && sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == "asc" ? "bi-caret-up-fill" : "bi-caret-down-fill"
    icon = column == sort_column(column) ? icon : ""
    link_to "#{title} <i class='#{icon}'></i>".html_safe,
      params.permit(*filter_param_keys).merge(column: column, direction: direction)
  end
end

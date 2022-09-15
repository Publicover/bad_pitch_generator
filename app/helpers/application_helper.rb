module ApplicationHelper
  include Pagy::Frontend

  def active_if(view_path)
    'active' if current_page?(view_path)
  end
end

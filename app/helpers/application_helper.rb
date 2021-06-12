module ApplicationHelper
  def should_show?
    params[:controller] == "pages" && params[:action] == "home"
  end
end

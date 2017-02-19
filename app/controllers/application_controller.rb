class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :check_user_agent_for_mobile
private
  def check_user_agent_for_mobile
    ua = request.env["HTTP_USER_AGENT"]
    if(ua.include?('Mobile') || ua.include?('Android'))
      redirect_to new_article_path
    end
  end
end

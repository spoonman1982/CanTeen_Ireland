class ApplicationController < ActionController::Base
  protect_from_forgery

  @latest_news = News.order("created_at").first
  
end

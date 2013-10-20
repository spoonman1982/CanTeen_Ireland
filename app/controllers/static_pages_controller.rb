class StaticPagesController < ApplicationController
  def home
  	@news_item = News.order("created_at").first
  end

  def contact_us
  end

  def about_us
  end
end

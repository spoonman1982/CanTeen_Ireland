class News < ActiveRecord::Base
  attr_accessible :article_content, :article_image, :article_name, :crop_x, :crop_y, :crop_w, :crop_h

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h


  mount_uploader :article_image, ArticleImageUploader

    after_update :crop_image
  
  def crop_image
    article_image.recreate_versions! if crop_x.present?
  end

  @news_item = News.order("created_at").last

  default_scope order('created_at DESC')

end

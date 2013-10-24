class Page < ActiveRecord::Base
	
  attr_accessible :parent_id, :content, :image, :name

  has_ancestry

  mount_uploader :image, MainImageUploader

end

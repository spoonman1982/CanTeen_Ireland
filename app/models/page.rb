class Page < ActiveRecord::Base
  attr_accessible :ancestry, :content, :image, :name
end

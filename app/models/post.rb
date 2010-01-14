class Post < ActiveRecord::Base
  attr_accessible :published, :title, :content, :draft

  validates_presence_of :title, :published, :content
end

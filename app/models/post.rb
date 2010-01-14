class Post < ActiveRecord::Base
  attr_accessible :published, :title, :content
end

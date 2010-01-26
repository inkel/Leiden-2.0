class Post < ActiveRecord::Base
  attr_accessible :published, :title, :content, :draft

  validates_presence_of :title, :published, :content

  def self.latest
    Post.find(:first, :conditions => { :draft => false }, :order => 'created_at DESC, published DESC')
  end

  def self.list
    Post.all(:order => 'created_at DESC, updated_at DESC')
  end
end

class WelcomeController < ApplicationController

  def index
    @post = Post.find(:first, :conditions => { :draft => false }, :order => 'published DESC')
    fresh_when :etag => @post, :last_modified => @post.updated_at.utc
  end

end

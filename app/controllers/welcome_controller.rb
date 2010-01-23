class WelcomeController < ApplicationController

  def index
    @post = Post.find(:first, :conditions => { :draft => false }, :order => 'published DESC')
  end

end

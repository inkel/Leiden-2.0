class WelcomeController < ApplicationController

  def index
    @post = Post.find(:first, :conditions => { :draft => false }, :order => 'created_at DESC, published DESC')
  end

end

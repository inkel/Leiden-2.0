class WelcomeController < ApplicationController

  def index
    @post = Post.latest
  end

end

class PostsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show, :feed ]
  before_filter :find_post, :except => [ :index, :feed, :new, :create ]

  def index
    @posts = Post.list
  end

  def feed
    @posts = Post.list

    respond_to do |format|
      format.atom
    end
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Successfully created post."
      redirect_to @post
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      flash[:notice] = "Successfully updated post."
      redirect_to @post
    else
      render :action => 'edit'
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
    redirect_to posts_url
  end

  protected

  def find_post
    @post = Post.find(params[:id])
  end
end

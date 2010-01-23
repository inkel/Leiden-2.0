class PostsController < ApplicationController
  before_filter :authenticate, :except => [ :index, :show, :feed ]

  def index
    @posts = Post.all(:order => 'created_at DESC, updated_at DESC')
  end

  def feed
    @posts = Post.all(:order => 'created_at DESC, updated_at DESC')

    respond_to do |format|
      format.atom
    end
  end

  def show
    @post = Post.find(params[:id])
    fresh_when :etag => @post, :last_modified => @post.updated_at.utc
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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Successfully updated post."
      redirect_to @post
    else
      render :action => 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
    redirect_to posts_url
  end
end

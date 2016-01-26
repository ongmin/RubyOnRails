class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save
      redirect_to post_path(@post)
    # redirect will lose the data
    else
      flash[:error] = "There was a problem trying to create the post! #{@post.errors.full_messages.join(', ')}"
      render :new
    # render will not redirect, it will render the same page again
    end

  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:post])
      redirect_to(post_path(@post.id))
    else
      render :edit
      flash[:error] = "Ohoh! Something isnt working. #{@post.errors.full_messages.join(', ')}"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path # or root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end

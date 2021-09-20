class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post), notice: "Post created"
    else
      render :new
    end
  end 

  private

  def post_params
    params.require(:post).permit(:desc, :user_id, :image)
  end
end

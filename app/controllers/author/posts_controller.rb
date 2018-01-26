class Author::PostsController < ApplicationController
  before_action :authenticate_author!
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = current_author.posts
  end

  def show

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_author
    if @post.save
      redirect_to author_posts_path, notice: t('create_success')
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to author_post_path(@post), notice: t('update_success')
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = t('delete_sucess')
    redirect_to author_posts_path
  end

  private

  def find_post
    @post = current_author.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end

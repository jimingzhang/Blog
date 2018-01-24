class BlogIndexController < ApplicationController
  def show
    @posts = Post.all.recent.published
  end
end

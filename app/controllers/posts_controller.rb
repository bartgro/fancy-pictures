class PostsController < ApplicationController
  def index
    @pagy, @posts = pagy(Post.all.with_attached_picture)
  end
end

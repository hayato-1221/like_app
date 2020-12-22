class LikesController < ApplicationController
  def create
    current_user.likes.create!(post_id: @post.id)
    @post = Post.find(params[:post_id])
  end

  def destroy
    current_user.likes.find_by(post_id: @post.id).destroy!
    @post = Post.find(params[:post_id])
  end
end

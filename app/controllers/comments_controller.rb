class CommentsController < ApplicationController
  def create
    Comment.create(content: params[:content], post_id: params[:post_id])
    @id =
    redirect_to "/posts/#{params[:post_id]}"
  end
end

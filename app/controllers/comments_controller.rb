class CommentsController < ApplicationController
  def create
    comment = current_user.comments.new(comment_params)
    comment.save
    redirect_to "/posts/#{params[:post_id]}"
  end
  def comment_params
    params.permit(:content, :post_id)
  end
end

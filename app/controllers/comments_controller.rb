class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_back(fallback_location: pet_path(:pet_id))
    else
      redirect_back(fallback_location: pet_path(:pet_id))
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text, :pet_id)
  end
end
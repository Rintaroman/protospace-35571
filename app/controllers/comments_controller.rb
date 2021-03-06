class CommentsController < ApplicationController

  def create
    @comment = Comment.new(create_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end


  private

  def create_params
    params.require(:comment).permit(:text).merge(user_id: .id, prototype_id: params[:prototype_id])
  end
end

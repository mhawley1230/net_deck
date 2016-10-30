class CommentsController < ApplicationController

  def create
    @tournament = Tournament.find(params[:tournament_id])
    @comment = Comment.new(comment_params)
    @comment.tournament = @tournament
    @comment.user = current_user

    if user_signed_in?
      if @comment.save
        flash[:notice] = 'Comment saved'
      else
        flash[:notice] = @comment.errors.full_messages.join(', ')
      end
      redirect_to @tournament
    else
      flash[:notice] = 'Please sign in'
      redirect_to new_user_session_path
    end
  end

  def destroy
    comment = Commente.find(params[:id])
    tournament = comment.tournament
    if comment.user == current_user || current_user.admin
      comment.destroy
      flash[:notice] = 'Review successfully deleted'
      redirect_to tournament
    end
  end

  def sign_in
    flash[:notice] = "Please sign in"
    redirect_to new_user_session_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end

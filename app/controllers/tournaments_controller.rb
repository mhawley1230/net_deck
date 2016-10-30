class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all.order(created_at: :desc)
    respond_to do |format|
      format.html
      format.json {
        render tournaments: {
          file: 'index.json.erb',
          content_type: 'application/json'
        }
      }
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
    @decks = @tournament.decks
    @comments = @tournament.comments
    @comment = Comment.new
  end
end

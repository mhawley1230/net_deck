class DecksController < ApplicationController
  def index
    if params[:search] == ''
      flash.now[:alert] = 'Please specify a search phrase.'
    end
    if params[:search].present?
      @decks = Deck.search(params[:search])
      if @decks.empty?
        flash.now[:notice] = 'Sorry, there were no matches.'
      else
        flash.now[:notice] = 'Check out your search matches below!'
      end
    else
      @decks = Deck.all.order(created_at: :desc)
    end
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
    respond_to do |format|
      format.html
      format.json { render json: {
        player: @deck.player,
        archetype: @deck.archetype,
        cards: @cards } }
    end
  end
end

class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
    respond_to do |format|
      format.html
      format.json { render json: {
        player: @deck.player,
        archetype: @deck.archetype,
        cards: @cards
      } }
    end
  end
end

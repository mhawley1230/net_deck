class DecksController < ApplicationController
  def index
    @decks = Deck.all
    if params[:query].present?
      @decks = Deck.search(params[:query])
    end
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
    respond_to do |format|
      format.html
      format.json {
        render json: {
          deck: {
            name: @deck.name,
            player: @deck.player,
            archetype: @deck.archetype,
            main: @cards.where(main?: true),
            side: @cards.where(main?: false)
          }
        }
      }
    end
  end
end

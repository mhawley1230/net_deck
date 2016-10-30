class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
    respond_to do |format|
      format.html
      format.json {
        render json: {
          card: {
            name: @card.name,
            img_url: @card.img_url,
          }
        }
      }
    end
  end
end

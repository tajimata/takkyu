class HomeController < ApplicationController
  def index
    @racket = Racket.all
  end

  def new
  end

  def create
    Racket.create(racket_params)
  end

  private
  def racket_params
    params.permit(:name, :image, :text)
  end
end

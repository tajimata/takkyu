class HomeController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    # @racket = Racket.find(3)
    @racket = Racket.all.order("id DESC").page(params[:page]).per(5)
    # binding.pry
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

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

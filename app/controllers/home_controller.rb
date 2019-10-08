class HomeController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @racket = Racket.all.order("id DESC").page(params[:page]).per(5)
    
  end

  def new
  end

  def create
    Racket.create(image: racket_params[:image], text: racket_params[:text], user_id: current_user.id)
  end

  def destroy
    racket = Racket.find(params[:id])
    racket.destroy if racket.user_id == current_user.id
  end

  def edit
    @racket = Racket.find(params[:id])
  end

  def update
    racket = Racket.find(params[:id])
    if racket.user_id == current_user.id
      racket.update(racket_params)
    end
  end

  def show
    @racket = Racket.find(params[:id])
  end

  private
  def racket_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end

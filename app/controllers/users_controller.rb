class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @racket = current_user.rackets.page(params[:page]).per(5).order("created_at DESC")
  end
end

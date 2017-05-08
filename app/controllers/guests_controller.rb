class GuestsController < ApplicationController
before_action :logged_in?

  def index
    @guests = Guest.all
  end

  def show
  	# byebug
  	@guest = Guest.find_by(id: params[:id])
  end
end

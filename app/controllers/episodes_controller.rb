class EpisodesController < ApplicationController
before_action :logged_in?

  def index
    @episodes = Episode.all
  end

  def show
  	@episode = Episode.find_by(id: params[:id])
  end
end

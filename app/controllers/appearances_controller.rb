class AppearancesController < ApplicationController
before_action :logged_in?

def new
@appearance = Appearance.new()
end

def create
 @appearance = Appearance.create(guest_id: Guest.find_or_create_by(name: params[:appearance][:guest]).id, episode_id: Episode.find_by(number: params[:appearance][:episode]).id, rating: params[:appearance][:rating])
redirect_to episode_path(@appearance.episode)
end

end

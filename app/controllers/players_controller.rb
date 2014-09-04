class PlayersController < ApplicationController


  def index
    load_players
  end

  private

  def load_players
    @players = current_user.players
  end


end

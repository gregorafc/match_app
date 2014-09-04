class PlayersController < ApplicationController
  before_action :set_player, only: [:destroy]

  def index
    load_players
  end

  def new
    build_player
  end

  def create
    build_player
    save_player 
    if @player.errors.full_messages == ["Email has already been taken"]
      current_user.players << Player.find_by_email(@player.email)
      redirect_to players_path, notice: "Uzytkownik juz dodany w bazie, dopisany do listy"
    else
      render :new
    end
  end

  def destroy
    current_user.players.delete(@player)
    redirect_to players_path
  end


  private

  def load_players
    @players = current_user.players
  end

  def build_player
    @player ||= Player.new
    @player.attributes = player_params
  end

  def save_player
    if @player.save
      current_user.players << @player
      redirect_to players_path
    end
  end

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    player_params = params[:player]
    player_params ? player_params.permit(:name, :surname, :email) : {}
  end


end

class SportcentersController < ApplicationController
  before_action :set_sportcenter, only: [:show, :edit, :update, :destroy]

  def index
    load_sportcenters
  end

  def show
  end

  def new
    build_sportcenter
  end

  def create
    build_sportcenter
    save_sportcenter or render :new
  end

  def edit
  end

  def update
    build_sportcenter
  end

  def destroy
    @sportcenter.destroy
    redirect_to sportcenters_path
  end


  private

  def load_sportcenters
    @sportcenters = Sportcenter.all
  end

  def build_sportcenter
    @sportcenter ||= Sportcenter.new
    @sportcenter.attributes = sportcenter_params
  end

  def save_sportcenter
    redirect_to @sportcenter if @sportcenter.save   
  end

  def set_sportcenter
    @sportcenter = Sportcenter.find(params[:id])
  end

  def sportcenter_params
    params.require(:sportcenter).permit(:name, :adress, :phone)
  end

end

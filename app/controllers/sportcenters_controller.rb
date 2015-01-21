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
    save_sportcenter
  end

  def edit
  end

  def update
    build_sportcenter
    save_sportcenter or render :new
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
    respond_to do |format|
      if @sportcenter.save
        format.html { redirect_to sportcenters_path }
        format.json { render json: @sportcenter.to_json, status: 200 }
      else
        format.html { render 'new'}
        format.json { render json: @sportcenter.to_json, status: :precondition_failed }
      end
    end
  end

  def set_sportcenter
    @sportcenter = Sportcenter.find(params[:id])
  end

  def sportcenter_params
    sportcenter_params = params[:sportcenter]
    sportcenter_params ? sportcenter_params.permit(:name, :adress, :phone) : {}
  end

end

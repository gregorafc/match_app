class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :destroy, :edit, :update]
  before_action :set_sportcenter_id, only: [:new, :show, :save_field]

  def show
  end

  def new
    build_field
    set_sportcenter_id
  end

  def create
    build_field
    save_field or render :new
  end

  def edit
    @sportcenter_id = @field.sportcenter_id
  end

  def update
    @sportcenter_id = @field.sportcenter_id
    build_field
    save_field or render 'new'
  end

  def destroy
    @field.destroy
    redirect_to sportcenters_path
  end


  private

  def set_field
    @field = Field.find(params[:id])
  end

  def set_sportcenter_id
    @sportcenter_id = params[:sportcenter_id]
  end

  def build_field
    @field ||= Field.new
    @field.attributes = field_params
  end

  def save_field
    redirect_to sportcenters_path if @field.save
  end

  def field_params
    field_params = params[:field]
    field_params ? field_params.permit(:name, :sportcenter_id) : {}
  end

end

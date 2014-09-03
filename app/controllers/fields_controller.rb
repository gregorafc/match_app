class FieldsController < ApplicationController
  before_action :set_field, only: [:show]


  def show
  end

  def new
    build_field
  end

  def create
    build_field
    save_field or render :new
  end

  private

  def set_field
    @field = Field.find(params[:id])
  end

  def build_field
    @field ||= Field.new
    @field.attributes = field_params
  end

  def save_field
    redirect_to @field if @field.save
  end

  def field_params
    field_params = params[:field]
    field_params ? field_params.permit(:name, :sportcenter_id) : {}
  end

end

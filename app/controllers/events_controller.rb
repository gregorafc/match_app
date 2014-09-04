class EventsController < ApplicationController
  before_action :set_event, only: [:destroy]

  def index
    load_events
  end

  def new
    build_event
  end

  def create
    build_event
    save_event or render :new
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def load_events
    @events = current_user.events
  end

  def build_event
    @event ||= Event.new
    @event.user_id = current_user.id
    @event.attributes = event_params
  end

  def save_event
    redirect_to events_path if @event.save   
  end

  def event_params
    event_params = params[:event]
    event_params ? event_params.permit(:game_name, :field_id) : {}
  end

  def set_event
    @event = Event.find(params[:id])
  end


end

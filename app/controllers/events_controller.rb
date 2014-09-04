class EventsController < ApplicationController


  def index
    load_events
  end


  private

  def load_events
    @events = current_user.events
  end



end

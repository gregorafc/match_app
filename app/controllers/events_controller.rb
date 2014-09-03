class EventsController < ApplicationController


  def index
    load_events
  end


  private

  def load_events
    @events = Event.where('user_id = ?', current_user.id)
  end



end

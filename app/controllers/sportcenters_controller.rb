class SportcentersController < ApplicationController



  def index
    load_sportcenters
  end



  private

  def load_sportcenters
    @sportcenters = Sportcenter.all 
  end


end

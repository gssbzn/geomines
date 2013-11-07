# @author Gustavo Bazan
# Home controller
class WelcomeController < ApplicationController
  
  # GET /
  def index
    @mines = Mine.select("id, name, details, longitude, latitude") #.all
    
  end
end

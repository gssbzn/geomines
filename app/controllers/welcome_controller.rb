class WelcomeController < ApplicationController
  def index
    @mines = Mine.all
    
  end
end

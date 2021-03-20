class Site::HomesController < ApplicationController
  def index
      @resp =  Home.authenticate
  end
end

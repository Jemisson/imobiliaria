class Site::HomesController < ApplicationController
  def index
      @resp =  Home.authentication
  end
end

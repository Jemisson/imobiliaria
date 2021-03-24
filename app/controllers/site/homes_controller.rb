class Site::HomesController < ApplicationController

  def index
      resp =  Home.authentication

      if user_signed_in?
        resp = Bookmark.mount_json(resp)
      end

      @resp = Home.paginate_hash(resp, params[:page])
  end

  def building
    @json = params
  end

end

class Site::BookmarksController < ApplicationController
  before_action :authenticate_user!

  def index
    resp =  Home.authentication

    if user_signed_in?
      resp = Bookmark.mount_json(resp)
    end

    @resp = Home.paginate_hash(resp, params[:page])
  end

  def update
    bookmark = Bookmark.find_bookmarks(params[:bookmark], current_user)

    if bookmark == []
      Bookmark.create(building_id: params[:bookmark], user: current_user)
      @bookmark_exists = true
    else
      bookmark.destroy_all
    end

    respond_to do |format|
      format.html {redirect_to :root}
      format.js {}
    end
  end

end

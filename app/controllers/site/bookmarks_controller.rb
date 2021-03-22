class Site::BookmarksController < ApplicationController
  before_action :authenticate_user!

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

class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(params[:bookmarks])
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

  redirect_to bookmarks_path, status: :see_other
  end
end

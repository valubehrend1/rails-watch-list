class BookmarksController < ApplicationController
    def new
        @bookmark = Bookmark.new
    end

    def create
        @list = List.find(params[:list_id])
    end

    def destroy
    end
end

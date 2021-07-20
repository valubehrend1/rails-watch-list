class BookmarksController < ApplicationController

    def create
        @bookmark = Bookmark.new(bookmark_params)
        @list = find_params_id
        @bookmark.list = @list
        if @bookmark.save
            redirect_to list_path(@list)
        end
    end

    def destroy
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
        redirect_to list_path(@bookmark.list)
    end

    private

    def bookmark_params
        params.require(:bookmark).permit(:comment, :movie_id)
    end

    def find_params_id
        List.find(params[:list_id])
    end
end

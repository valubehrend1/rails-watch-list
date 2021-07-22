class ListsController < ApplicationController
    def index
        @lists = List.all
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        if @list.save
            redirect_to lists_path
        else
            render :new
        end
    end

    def show
        @bookmark = Bookmark.new
        @list = list_find
        @bookmarks = Bookmark.where(list_id: @list.id)
    end

    def destroy
        @list = list_find
        @list.destroy
        redirect_to lists_path
    end

    private
    def list_params
    params.require(:list).permit(:name, :photo)
    end

    def list_find
        List.find(params[:id])
    end
end

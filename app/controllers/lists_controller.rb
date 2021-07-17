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
           redirect_to new_list_path
        end
    end

    def show
    end

    private
    def list_params
    params.require(:list).permit(:name)
    end
end

class SnacksController < ApplicationController
    def index
        byebug
        @snacks = Snack.all
    end

    def show
        @snack = Snack.find(params[:id])
    end
end

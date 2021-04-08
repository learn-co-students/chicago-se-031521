class UserSnacksController < ApplicationController

    def new
        @user_snack = UserSnack.new

        @users = User.all
        @snacks = Snack.all
    end

    def create
        user_snack = UserSnack.create(user_snack_params)

        redirect_to user_path(user_snack.user.id)    
    end

    private

    def user_snack_params
        params.require(:user_snack).permit(:review, :rating, :user_id, :snack_id)
    end
end

class UserSnacksController < ApplicationController

    def new
        @user_snack = UserSnack.new

        @users = User.all
        @snacks = Snack.all
    end

    def create
        @user_snack = UserSnack.create(user_snack_params)

        if @user_snack.valid?
            redirect_to user_path(@user_snack.user.id) 
        else
            flash[:errors] = @user_snack.errors.full_messages

            redirect_to new_user_snack_path
        end   
    end

    private

    def user_snack_params
        params.require(:user_snack).permit(:review, :rating, :user_id, :snack_id)
    end
end

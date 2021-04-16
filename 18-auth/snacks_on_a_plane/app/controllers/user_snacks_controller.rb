class UserSnacksController < ApplicationController
    before_action :authorize_user, only: [:edit, :update, :destroy]
    before_action :find_user_snack, only: [:show, :edit, :update, :destroy]

    def new
        # if session[:user_id]
            @user_snack = UserSnack.new

            @users = User.all
            @snacks = Snack.all
            
        #     render :new
        # else
        #     redirect_to login_path
        # end
    end

    def create
        merged_params = user_snack_params.merge(user_id: @current_user.id)
        @user_snack = UserSnack.create(merged_params)

        if @user_snack.valid?
            redirect_to user_path(@user_snack.user.id) 
        else
            flash[:errors] = @user_snack.errors.full_messages

            redirect_to new_user_snack_path
        end   
    end

    def index
        @user_snacks = UserSnack.all
    end

    def show
        @user_snack = UserSnack.find(params[:id])
    end

    def edit
        @user_snack = UserSnack.find(params[:id])

        # if @current_user == @user_snack.user
            @snacks = Snack.all
            # render :edit
        # else
        #     redirect_to @user_snack
        # end
    end

    def update
        @user_snack.update(user_snack_params)
        redirect_to user_snacks_path
    end

    def destroy
        @user_snack.destroy
        redirect_to user_snacks_path
    end

    private

    def user_snack_params
        params.require(:user_snack).permit(:review, :rating, :user_id, :snack_id)
    end

    def authorize_user
        @user_snack = UserSnack.find(params[:id])
        redirect_to @user_snack unless @current_user == @user_snack.user
    end

    def find_user_snack
        @user_snack = UserSnack.find(params[:id])
    end
end

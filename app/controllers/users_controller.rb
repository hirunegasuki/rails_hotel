class UsersController < ApplicationController
    
    before_action :authenticate_user!
    before_action :set_user

    def account
    end

    def profile
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to users_profile_path
        end
    end

    def set_user
        @user = User.find(current_user.id)
    end

    private
    def user_params
        params.require(:user).permit(
            :name,
            :profile,
            :avatar
        )
    end
    
end

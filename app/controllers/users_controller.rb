class UsersController < ApplicationController
    def new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_user_path
        else
            render :new, status: :unproccesable_entity
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end
end

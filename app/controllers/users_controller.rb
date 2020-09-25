class UsersController < ApplicationController

    def new
    end

    def index
    end

    # def create
    #     user = User.create(user_params)
    # end

    def create
        @user = User.create(user_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save
        session[:user_id] = @user.id
        redirect_to controller: 'welcome', action: 'home'
    end

    def login
        @user = User.find(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end


end

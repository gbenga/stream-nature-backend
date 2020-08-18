class Api::V1::UsersController < ApplicationController
    skip_before_action :authorised?, only: [:create, :sign_in]

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find(params[:id])
        if user
            render json: user, include: [:events]
        else
            render json: "user with this id not found"
        end
    end

    def new
        user = User.new
    end

    def create
        user = User.create(user_params)
        render json: user, include: [:events]
    end

    def follow
        user = User.find(params[:id])
        user.update(followers: user.followers + 1)
        render json: { updatedFollowers: user.followers }
    end

    def sign_in
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
         render json: {user: user, token: generate_token({id: user.id})}
        else 
            render json: {errors: "You could not be signed in. Check your username and password combination"}
        end
    end

    def validate
        user = logged_in_user
        if user 
            render json: {user: user, token: generate_token({id: user.id})}
        else 
            render json: {message: "Failed to validate this user"}
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :username, :bio, :follower, :avatar)
    end
end

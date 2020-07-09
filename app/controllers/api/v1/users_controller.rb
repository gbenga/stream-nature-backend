class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
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

    private
    def user_params
        params.require(:user).permit(:name, :username, :password_digest, :bio, :follower, :avatar)
    end
end

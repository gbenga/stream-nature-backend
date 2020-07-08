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
            render json: {message => "user with this id not found"}
        end
    end
end

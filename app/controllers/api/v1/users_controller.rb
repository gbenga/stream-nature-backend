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

    def new
        user = User.new
    end

    def create
        user = User.create(user_params)
        render json: user, include: [:events]
    end

    def sign_in
        #Try an find a user with the username send in the params hash
        user = User.find_by(username: params[:username])
        #If we can find them, authenticate the user with the password we've been given
        if user && user.authenticate(params[:password])
         #If it was successful, log them in
         render json: {username: user.username, token: generate_token({id: user.id})}
         #Otherwise send back an authentication error
        else 
            render json: {message: "Cant find a user with that username OR incorrect password"}
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :username, :password_digest, :bio, :follower, :avatar)
    end
end

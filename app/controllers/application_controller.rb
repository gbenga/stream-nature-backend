class ApplicationController < ActionController::API
    before_action :authorised?

    def secret
        ENV["MY_SECRET"]
    end

    def generate_token(data)
        JWT.encode(data, secret)
    end

    def decode_token
        # puts "helooooo"
        # byebug
        token = request.headers["Authorization"]
        JWT.decode(token, secret).first["id"]
        # puts h
    end

    def logged_in_user
        User.find(decode_token)
    end

    private

    def authorised?
        render json: { errors: ["You must be logged in to perform this action"] }, status: 406 unless logged_in_user
    end
end

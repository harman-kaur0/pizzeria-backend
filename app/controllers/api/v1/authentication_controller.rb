class Api::V1::AuthenticationController < ApplicationController
    skip_before_action :authorized, only: :login

    def login
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
        else 
            render json: {error: "Incorrect username or password"}, status: :unauthorized
        end
    end

    def user
        if @current_user
            render json: {user: UserSerializer.new(@current_user)}, status: :accepted
        end
    end


    private 

    def user_params
        params.permit(:username, :password)
    end
end
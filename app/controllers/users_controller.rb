class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, include: :apps
    end 

    def show
        user = User.find_by(id: params[:id])
        if user 
        render json: user, include: :apps
        else 
            render json: {error: "Nahhhhh get an ID BRUV."}, status: 404
        end 
    end 

    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            render json: user 
        else 
            render json: {error: "Invalid username or password combination"}, status: 401
        end 
    end 

end

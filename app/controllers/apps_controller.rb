class AppsController < ApplicationController

    def index 
        apps = App.all
        render json: apps, include: :reviews
    end 

    def show 
        app = App.find_by(id: params[:id])

        if app
            render json: app, include: :reviews
        else 
            render json: {error: "Nahhhhh get an ID BRUV."}, status: 404
        end 
    end

end


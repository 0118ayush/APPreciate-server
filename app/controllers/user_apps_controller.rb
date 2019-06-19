class UserAppsController < ApplicationController

    def index 
        userapps = UserApp.all
        render json: userapps
    end 

    def create 
        newuserapp = UserApp.new(app_id: params[:app_id], user_id: params[:user_id])
        
        if newuserapp.save
            render json: newuserapp
        else
            render json: {errors: "Can't add this to your portfolio."}, status: 400
        end
    end 
    
    def destroy 
        userapp = UserApp.find_by(id: params[:id])
        userapp.destroy
        render json: userapp
    end 

end

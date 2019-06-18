class ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json: reviews
    end 

    def destroy 

    end 

    def create 
    end 
    

end

class ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json: reviews
    end 

    def create 
        newReview = Review.new(comment: params[:comment], app_id: params[:app_id], user_id: params[:user_id])
        
        if newReview.save
            render json: newReview
        else
            render json: {errors: "You need to create a valid review, bruv."}, status: 400
        end
    end 
    
    def destroy 
        review = Review.find_by(id: params[:id])
        review.destroy
        render json: review
    end 


end

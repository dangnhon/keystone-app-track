class MeetupsController < ApplicationController

    def index 
        meetups = Meetup.all 
        render json: meetups
    end 

    def create 
        meetup = Meetup.create(meetup_params)
        render json: meetup
    end 

    def update
        meetup = Meetup.find_by(id: params[:id])
        meetup.update(meetup_params)
        render json: meetup
    end

    def destroy
        meetup = Meetup.find_by(id: params[:id])
        meetup.destroy
        render json: {message: 'Your meetup has been deleted'}
    end 

    private 
    
    def meetup_params
        params.permit(:name, :location, :date, :user_id)
    end
end

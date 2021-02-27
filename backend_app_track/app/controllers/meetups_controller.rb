class MeetupsController < ApplicationController

    def create 
        meetup = Meetup.create(meetup_params)
        render json: meetup
    end 

    private 
    
    def meetup_params
        params.permit(:name, :location, :date, :date, :user_id)
    end
end

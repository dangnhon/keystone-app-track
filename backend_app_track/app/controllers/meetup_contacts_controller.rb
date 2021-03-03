class MeetupContactsController < ApplicationController
    def index 
        contacts = MeetupContact.all 
        render json: contacts
    end 

    def create 
        contact = MeetupContact.create(contact_params)
        render json: contact
    end 

    def update
        contact = MeetupContact.find_by(id: params[:id])
        contact.update(contact_params)
        render json: contact
    end

    private 
    
    def contact_params
        params.permit(:name, :phone_number, :email, :meetup_id)
    end

end

class JobsController < ApplicationController
    
    def index
        jobs = Job.all 
        render json: jobs  
    end 

    def create 
        job = Job.create(job_params)
        render json: job 
    end 

    private 
    
    def job_params
        params.permit(:company_name, :job_title, :date, :salary, :status, :note, :contact_number, :user_id)
    end 
end

class TasksController < ApplicationController
    
    def index 
        tasks = Task.all 
        render json: tasks
    end 

    def create 
        task = Task.create(task_params)
        render json: task
    end 


    def update
        task = Task.find_by(id: params[:id])
        task.update(task_params)
        render json: task
    end


    def destroy
        task = Task.find_by(id: params[:id])
        task.destroy
        render json: {message: 'Your job task has been deleted'}
    end

    private 
    
    def task_params
        params.permit(:task, :completed, :priority, :job_id)
    end

end

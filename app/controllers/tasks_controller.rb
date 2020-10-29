# TASKS = ["Watch cs fun video", "Do the laundry", "Answer 2 emails"]

class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show 
        task_id = params[:id].to_i
        @task = Task.find(task_id)
        if @task.nil?
            head :not_found
            return
        end
    end
end

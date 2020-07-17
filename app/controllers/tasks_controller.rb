class TasksController < ApplicationController
    # show the list of tasks
    def index 
        @tasks = Task.order(created_at: :desc)
    end

    def new
        @task = Task.new # we need an instance of our resource to be used with 'form_with'
    end

    def create
        @task = Task.new(params.require(:task).permit(:title))
        if @task.save 
            redirect_to tasks_path
        else
            redirect_to new_task_path
        end
    end

    def show 
        id = params[:id]
        @task = Task.find(id)
    end

end

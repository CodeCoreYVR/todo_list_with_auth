class TasksController < ApplicationController
    # show the list of tasks
    def index 
        @tasks = Task.all
    end
end

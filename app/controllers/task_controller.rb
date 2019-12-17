class TaskController < ApplicationController
    # before_action :move_to_index, except: :index

    def index
        @tasks = Task.all
    end

    def create
      @task = Task.create(task_params)
      redirect_to tasks_path
    end
       
    def destroy
      task = Task.find(params[:id])
      task.destroy
      redirect_to tasks_path
    end
    private
    def task_params
      params.permit(:text)
    end

    # def  move_to_index
    #   redirect_to action: :index unless user_signed_in?
    # end
     
end

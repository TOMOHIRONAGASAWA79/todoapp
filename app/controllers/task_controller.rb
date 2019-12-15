class TaskController < ApplicationController

    def index
        @tasks = Task.find(1)
    end
end

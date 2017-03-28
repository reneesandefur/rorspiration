class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end
    
    def new
       @project = Project.new 
    end
    
    def show
        @project = Project.find(params[:id])
    end
    
    def create
        @project = Project.create
        if @project.valid?
            redirect_to project_path
        end
    end
end

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
        @project = Project.create(project_params)
        redirect_to projects_path
    end
    
    private
    
    def project_params
        params.require(:project).permit(:name, :picture, :description, :github, :app_link)
    end
end




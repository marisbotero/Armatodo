class ProjectsController < ApplicationController
    def index
      @projects=Project.all
    end

    def new
      @project=Project.new
    end

    def edit
        @project= Project.find(params[:id])
    end

    def create
      @project = Project.new(project_params)
      @project.save
      redirect_to projects_path
    end

    def destroy
      @project=Project.find(params[:id])
      @project.destroy
      redirect_to projects_path
    end

    def update
      @project=Project.find(params[:id])
      @project.update(project_params)
      redirect_to projects_path
    end

    def project_params
      params.require(:project).permit(:tittle, :description, :image)
    end

end

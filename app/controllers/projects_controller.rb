class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @projects = Project.includes(:services).all
  end

  def show
    @project = Project.friendly.find(params[:id])
    @projects = Project.includes(:services).all
  end

end

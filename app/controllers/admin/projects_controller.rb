class Admin::ProjectsController < ApplicationController
  before_action :find_project, only: %i[show edit update destroy publish]

  def index
    @projects = Project.all
    @element_height = "200px"
    @sm_count = 1
    @md_count = 3
    @lg_count = 3
    @xl_count = 3
    @ms_per_scroll = 4000
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to admin_project_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to admin_project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_projects_path
  end

  def publish
    @project.update(published: !@project.published)
    redirect_to admin_project_path(@project)
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :location, :client, :architect, :sub_header, :contractor, :content, :banner, photos: [], service_ids: [])
  end
end

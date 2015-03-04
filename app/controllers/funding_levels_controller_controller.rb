class FundingLevelsControllerController < ApplicationController
  before_action :lookup_project

  def new
    @funding_level = @project.funding_levels.new
  end

  def create
    @funding_level = @project.funding_levels.new(funding_level_params)

    if @funding_levels.save
      redirect_to project_path(@project), notice: 'Created a Funding Level!'
    else
      render 'new'
    end
  end

  private

  def funding_level_params
    params.require(:funding_level).permit(:reward_...)
  end

  def lookup_project
    @project = Project.find(params[:project_id])
  end


end

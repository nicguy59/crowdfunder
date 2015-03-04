class PledgesControllerController < ApplicationController
  before_action :lookup_project

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.assign_funding_level(@project)

    if @pledge.save
      redirect_to project_path(@project), notice: 'Created a Pledge!'
    else
      render 'new'
    end
  end

  private

  def pledge_params
    params.require(:pledge).permit(:name, :email, :amount, :funding_level_id)
  end

  def lookup_project
    @project = Project.find(params[:project_id])
  end

end

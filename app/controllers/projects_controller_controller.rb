class ProjectsControllerController < ApplicationController

    def index
      @projects = Projects.all.order('created_at DESC')
    end
    
    def show
      @projects = Projects.find(params: id)
    end



end

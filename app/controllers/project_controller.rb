class ProjectController < ApplicationController

  def project
    render 'project'
    @project = Project.all
  end

end

class ProjectController < ApplicationController

  def project
    @project = Project.all 
  end

end

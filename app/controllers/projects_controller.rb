class ProjectsController < InheritedResources::Base
  
  def index
    @projects = Project.order('created_at DESC').all
  end
end


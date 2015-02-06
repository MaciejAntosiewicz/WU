class SketchesController < InheritedResources::Base

  def index
    @sketches = Sketche.all
  end

end


class SketchesController < InheritedResources::Base

  def index
    @sketches = Sketche.order('created_at DESC').all
  end

end


class VideosController < InheritedResources::Base

  def index
    @videos = Video.order('created_at DESC').all
  end

end


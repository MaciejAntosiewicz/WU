class VideosController < InheritedResources::Base

  def index
    @videos = Video.all
  end

end


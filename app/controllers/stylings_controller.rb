class StylingsController < ApplicationController

  def index
    @stylings = Styling.all
  end

end

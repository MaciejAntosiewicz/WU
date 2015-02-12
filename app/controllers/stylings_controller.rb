class StylingsController < ApplicationController

  def index
    @stylings = Styling.order('created_at DESC').all
  end

end
